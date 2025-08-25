#!/bin/sh

# 1) включено ли
val=$(printf '%s' "${PYTHON_SCRIPTS:-}" | tr '[:upper:]' '[:lower:]')
case "$val" in
  ""|0|false|no|off) exit 0 ;;
esac

# 2) директория и uv
DIR="${XDG_CONFIG_HOME:-$HOME/.config}/bash/python"
[ -d "$DIR" ] || { echo "WARN: no dir $DIR" >&2; exit 0; }
cd "$DIR" || { echo "WARN: cannot cd $DIR" >&2; exit 0; }
command -v uv >/dev/null 2>&1 || { echo "WARN: uv not found" >&2; exit 0; }

# 3) файлы .py по алфавиту
set -- *.py
[ "$1" = "*.py" ] && exit 0  # нет файлов

LC_ALL=C printf '%s\n' "$@" | sort | while IFS= read -r f; do
  echo "[RUN] $f"
  if ! uv run -- "$f"; then
    code=$?
    echo "[ERROR] $f exited with $code" >&2
  fi
done

exit 0
