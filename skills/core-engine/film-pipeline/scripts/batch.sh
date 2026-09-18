#!/usr/bin/env bash
# batch.sh — fire N parallel async generations from one or more prompt files.
#
# usage:
#   batch.sh --model <model> [--copies N] [--image <spec>]... [--param k=v]... \
#            [--meta '<json>'] --out <dir> <prompt-file> [<prompt-file>...]
#
# Writes <out>/tasks.jsonl (one JSON per line) and copies prompt files into <out>/.
set -euo pipefail

MODEL=""; COPIES=4; OUT=""; IMAGES=(); PARAMS=(); META=""; FILES=()
while [[ $# -gt 0 ]]; do
  case "$1" in
    --model|-m) MODEL="$2"; shift 2;;
    --copies)   COPIES="$2"; shift 2;;
    --image)    IMAGES+=("--image" "$2"); shift 2;;
    --param)    PARAMS+=("--param" "$2"); shift 2;;
    --meta)     META="$2"; shift 2;;
    --out|-o)   OUT="$2"; shift 2;;
    -h|--help)  sed -n '2,10p' "$0"; exit 0;;
    *)          FILES+=("$1"); shift;;
  esac
done

[[ -z "$MODEL" || -z "$OUT" || ${#FILES[@]} -eq 0 ]] && { echo "need --model, --out and ≥1 prompt file" >&2; exit 1; }
mkdir -p "$OUT"
SPACE_ARGS=(); [[ -n "${COHUB_SPACE_ID:-}" ]] && SPACE_ARGS=(-s "$COHUB_SPACE_ID")

total=$(( COPIES * ${#FILES[@]} ))
echo "batch: $total task(s) → model=$MODEL copies=$COPIES prompts=${#FILES[@]} out=$OUT"

for f in "${FILES[@]}"; do
  name=$(basename "$f" .txt)
  cp -f "$f" "$OUT/$name.txt"
  prompt=$(cat "$f")
  for ((c=1; c<=COPIES; c++)); do
    (
      args=(generate "$prompt" --model "$MODEL" --async --json)
      [[ ${#IMAGES[@]} -gt 0 ]] && args+=("${IMAGES[@]}")
      [[ ${#PARAMS[@]} -gt 0 ]] && args+=("${PARAMS[@]}")
      [[ -n "$META" ]] && args+=(--meta "$META")
      res=$(cohub "${SPACE_ARGS[@]}" "${args[@]}" 2>&1) || { echo "  ✗ $name c$c: $res" >&2; exit 0; }
      id=$(printf '%s' "$res" | python3 -c 'import json,sys
try:
  d=json.load(sys.stdin); print(d.get("taskRunId") or d.get("id") or d.get("run",{}).get("id") or "")
except Exception: print("")')
      if [[ -z "$id" ]]; then echo "  ✗ $name c$c: no task id in: $res" >&2; exit 0; fi
      printf '{"id":"%s","prompt":"%s","copy":%d,"model":"%s","status":"pending"}\n' "$id" "$name" "$c" "$MODEL" >> "$OUT/tasks.jsonl"
      echo "  ✓ $name c$c → $id"
    ) &
  done
done
wait
echo "queued. next: poll.sh $OUT"
