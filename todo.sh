#!/bin/bash

TODO_DIR="$HOME/.todo"
TODAY=$(date +%Y-%m-%d)
TODAY_FILE="$TODO_DIR/$TODAY.md"

mkdir -p "$TODO_DIR"

if [ ! -f "$TODAY_FILE" ]; then
  cat >"$TODAY_FILE" <<EOF
# $TODAY

## tasks
- [ ] 

## notes

EOF
  echo "new todo list created for $TODAY"
fi

case "$1" in
"history" | "h")
  ls -1 "$TODO_DIR"/*.md 2>/dev/null | while read f; do
    date=$(basename "$f" .md)
    total=$(grep -c '\- \[' "$f" 2>/dev/null || echo 0)
    done=$(grep -c '\- \[x\]' "$f" 2>/dev/null || echo 0)
    echo "$date  $done/$total done"
  done
  ;;
"done" | "d")
  total=$(grep -c '\- \[' "$TODAY_FILE" 2>/dev/null || echo 0)
  done=$(grep -c '\- \[x\]' "$TODAY_FILE" 2>/dev/null || echo 0)
  echo "$TODAY: $done/$total tasks done"
  ;;
"carry" | "c")
  YESTERDAY=$(date -v-1d +%Y-%m-%d 2>/dev/null || date -d "yesterday" +%Y-%m-%d)
  YESTERDAY_FILE="$TODO_DIR/$YESTERDAY.md"
  if [ -f "$YESTERDAY_FILE" ]; then
    echo "carrying unfinished tasks from $YESTERDAY..."
    grep '\- \[ \]' "$YESTERDAY_FILE" >>"$TODAY_FILE"
    echo "done"
  else
    echo "no todo file found for $YESTERDAY"
  fi
  ;;
*)
  nvim "$TODAY_FILE"
  ;;
esac
