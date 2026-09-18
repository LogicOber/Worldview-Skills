#!/usr/bin/env bash
# poll.sh — poll tasks recorded by batch.sh, download finished outputs, print a status table.
#
# usage: poll.sh <out-dir> [--once] [--interval SEC]
# outputs land as <out>/<prompt>-c<k>.<ext>; status in <out>/status.json
set -euo pipefail

OUT="${1:?out dir}"; shift || true
ONCE=0; INTERVAL=30
while [[ $# -gt 0 ]]; do
  case "$1" in
    --once) ONCE=1; shift;;
    --interval) INTERVAL="$2"; shift 2;;
    *) shift;;
  esac
done
[[ -f "$OUT/tasks.jsonl" ]] || { echo "no $OUT/tasks.jsonl" >&2; exit 1; }
SPACE_ARGS=(); [[ -n "${COHUB_SPACE_ID:-}" ]] && SPACE_ARGS=(-s "$COHUB_SPACE_ID")

while true; do
  rc=0
  python3 - "$OUT" "${SPACE_ARGS[@]:-}" <<'PY' || rc=$?
import json, sys, subprocess, os, urllib.request, mimetypes
out = sys.argv[1]; space = [a for a in sys.argv[2:] if a]
rows = [json.loads(l) for l in open(os.path.join(out, "tasks.jsonl")) if l.strip()]
status = {}
done_all = True
print(f"{'take':<28} {'status':<11} file")
for r in rows:
    tid = r["id"]; name = f'{r["prompt"]}-c{r["copy"]}'
    try:
        d = json.loads(subprocess.check_output(["cohub", *space, "tasks", "get", tid, "--json"], stderr=subprocess.DEVNULL))
    except Exception as e:
        status[name] = {"id": tid, "status": "error"}; done_all = False
        print(f"{name:<28} {'error':<11} -"); continue
    run = d.get("run", d); st = run.get("status", "unknown")
    files = []
    if st == "completed":
        outs = (run.get("result") or {}).get("output") or []
        for i, o in enumerate(outs):
            url = (o.get("source") or {}).get("url") or o.get("url")
            if not url: continue
            ext = os.path.splitext(url.split("?")[0])[1] or mimetypes.guess_extension((o.get("source") or {}).get("mimeType","") or "") or ".bin"
            fn = os.path.join(out, f"{name}{'' if i==0 else '-'+str(i)}{ext}")
            if not os.path.exists(fn):
                try: urllib.request.urlretrieve(url, fn)
                except Exception as e: print(f"  download failed {fn}: {e}")
            files.append({"file": fn, "url": url})
    elif st not in ("failed", "cancelled"):
        done_all = False
    status[name] = {"id": tid, "status": st, "outputs": files}
    print(f"{name:<28} {st:<11} {files[0]['file'] if files else '-'}")
json.dump(status, open(os.path.join(out, "status.json"), "w"), indent=1)
sys.exit(0 if done_all else 3)
PY
  if [[ $rc -eq 0 ]]; then echo "all done → $OUT"; exit 0; fi
  [[ $ONCE -eq 1 ]] && exit "$rc"
  sleep "$INTERVAL"
done
