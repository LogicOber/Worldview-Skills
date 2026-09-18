#!/usr/bin/env bash
# capture.sh — screenshot a real web page so it can be used as an on-screen prop
# (laptop / phone / monitor content) in a shot. Produces a clean PNG plus a
# "device-ready" variant at a chosen aspect.
#
# usage:
#   capture.sh <url> <out.png> [--viewport WxH] [--full] [--wait-text "..."] [--session name]
#              [--scroll N] [--dark]
#
# defaults: viewport 1920x1080 (16:9 laptop), networkidle wait, 1.5 s settle.
set -euo pipefail

URL="${1:?url}"; OUT="${2:?out.png}"; shift 2
VW=1920; VH=1080; FULL=0; WAIT_TEXT=""; SESSION="capture"; SCROLL=0; DARK=0
while [[ $# -gt 0 ]]; do
  case "$1" in
    --viewport) VW="${2%x*}"; VH="${2#*x}"; shift 2;;
    --full) FULL=1; shift;;
    --wait-text) WAIT_TEXT="$2"; shift 2;;
    --session) SESSION="$2"; shift 2;;
    --scroll) SCROLL="$2"; shift 2;;
    --dark) DARK=1; shift;;
    *) shift;;
  esac
done

command -v agent-browser >/dev/null || npm i -g agent-browser >/dev/null 2>&1
export AGENT_BROWSER_ARGS="${AGENT_BROWSER_ARGS:---no-sandbox,--disable-dev-shm-usage}"
AB=(agent-browser --session "$SESSION")

mkdir -p "$(dirname "$OUT")"
"${AB[@]}" open "$URL" >/dev/null
"${AB[@]}" set viewport "$VW" "$VH" >/dev/null
"${AB[@]}" wait --load networkidle >/dev/null 2>&1 || true
[[ -n "$WAIT_TEXT" ]] && { "${AB[@]}" wait --text "$WAIT_TEXT" >/dev/null 2>&1 || true; }
[[ $DARK -eq 1 ]] && "${AB[@]}" eval "document.documentElement.style.colorScheme='dark'" >/dev/null 2>&1 || true
[[ "$SCROLL" != "0" ]] && "${AB[@]}" scroll down "$SCROLL" >/dev/null
sleep 1.5
if [[ $FULL -eq 1 ]]; then "${AB[@]}" screenshot --full "$OUT" >/dev/null; else "${AB[@]}" screenshot "$OUT" >/dev/null; fi
TITLE=$("${AB[@]}" get title 2>/dev/null || echo "")
"${AB[@]}" close >/dev/null 2>&1 || true

python3 - "$OUT" "$TITLE" "$URL" <<'PY'
import sys, json, os
out, title, url = sys.argv[1:4]
try:
    from PIL import Image
    im = Image.open(out); w, h = im.size
except Exception:
    w = h = None
meta = {"url": url, "title": title, "file": out, "width": w, "height": h}
json.dump(meta, open(os.path.splitext(out)[0] + ".json", "w"), indent=1)
print(json.dumps(meta))
PY
