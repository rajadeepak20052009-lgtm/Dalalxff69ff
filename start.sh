#!/data/data/com.termux/files/usr/bin/bash
set -u
cd "$(dirname "$0")" || exit 1
PORT="${PORT:-8080}"
if ! command -v python >/dev/null 2>&1; then
  echo "Python नहीं मिला। पहले चलाएँ: pkg install python -y"
  exit 1
fi
printf '\033[1;32mFF Emote Pro Advanced चालू है\033[0m\n'
printf 'Browser: http://127.0.0.1:%s\n' "$PORT"
printf 'बंद करने के लिए Ctrl+C दबाएँ।\n'
python -m http.server "$PORT" --bind 127.0.0.1
