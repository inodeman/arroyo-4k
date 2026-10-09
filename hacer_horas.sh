#!/bin/sh
# Pega un loop hasta N horas, sin recompresión.
# Uso: ./hacer_horas.sh arroyo_loop_10s.mp4 arroyo_4k_3h.mp4 3
set -e
IN="${1:-arroyo_loop_10s.mp4}"
OUT="${2:-arroyo_4k_horas.mp4}"
HOURS="${3:-3}"
DUR=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 "$IN")
TARGET=$(awk -v h="$HOURS" 'BEGIN { printf "%.0f", h * 3600 }')
N=$(awk -v d="$DUR" -v t="$TARGET" 'BEGIN { n = int(t / d) + 1; print n }')
echo "Repitiendo $N veces ($DUR s) -> $OUT  (objetivo ${HOURS}h)"
LIST=$(mktemp)
i=0
ABS="$(cd "$(dirname "$IN")" && pwd)/$(basename "$IN")"
while [ "$i" -lt "$N" ]; do
  printf "file '%s'\n" "$ABS" >> "$LIST"
  i=$((i + 1))
done
ffmpeg -y -f concat -safe 0 -i "$LIST" -c copy -movflags +faststart -t "$TARGET" "$OUT"
rm -f "$LIST"
ffprobe -hide_banner -i "$OUT"
