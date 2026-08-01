#!/bin/bash
# بناء بطاقات المشاريع — نص موسّط في وسط البطاقة (annotate + trim)
cd /tmp/ID-KM-profile/assets
AMIRI="/usr/share/fonts/TTF/Amiri-Bold.ttf"
DARK="#0d1b2e"; CARD="#16244d"; GOLD="#d4a843"; LGOLD="#f0d78c"; CREAM="#fef3c7"
W=520; H=160
CX=340   # مركز التوسيط — الضعف (80px يمين الوسط، كما في 3e272ec)

# رسم سطر نصي على كانفاس واسع ثم قصّه لأبعاده الحقيقية
render_line() {
  local text="$1" color="$2" size="$3"
  local dir=""
  if echo "$text" | LC_ALL=C grep -q '[^[:print:]]'; then dir="-direction rtl"; fi
  magick -size 800x70 xc:none -fill "$color" -font "$AMIRI" -pointsize "$size" $dir \
    -annotate +20+50 "$text" -trim +repage /tmp/tline_$$.png
}

add_line() {
  local text="$1" color="$2" size="$3" y="$4" canvas="$5"
  render_line "$text" "$color" "$size"
  local w h
  read w h <<< "$(identify -format '%w %h' /tmp/tline_$$.png)"
  local x=$(( (CX - w) / 2 ))
  [ $x -lt 12 ] && x=12
  magick "$canvas" /tmp/tline_$$.png -geometry "+${x}+${y}" -composite "$canvas"
  rm -f /tmp/tline_$$.png
}

build_card() {
  local icon="$1" title="$2" l1="$3" l2="$4" repo="$5" out="$6"
  magick -size ${W}x${H} xc:none \
    -fill "$DARK" -draw "roundrectangle 3,3 $((W-3)),$((H-3)) 16,16" \
    -stroke "$GOLD" -strokewidth 3 -fill none -draw "roundrectangle 3,3 $((W-3)),$((H-3)) 16,16" \
    -fill "$CARD" -draw "roundrectangle 14,14 106,146 12,12" \
    "tabler/${icon}.png" -geometry +31+44 -composite \
    "$out"
  add_line "$title" "$LGOLD" 26 30 "$out"
  if [ -n "$l1" ]; then add_line "$l1" "$CREAM" 18 68 "$out"; fi
  if [ -n "$l2" ]; then add_line "$l2" "$CREAM" 18 96 "$out"; fi
  add_line "github.com/ID-KM/${repo}" "$GOLD" 15 132 "$out"
}

build_card "book"   "midad"           "قارئ كتب عربي"            "PDF + EPUB + Archive.org" "midad"           "card-1.png"
build_card "music"  "music-remover-2" "عزل صوت + تحميل"          ""                         "music-remover-2" "card-2.png"
build_card "music"  "music-remover-1" "عزل صوت"                  ""                         "music-remover-1" "card-3.png"
build_card "message-chat" "haddara"   "محادثة — Supabase"        ""                         "haddara"         "card-4.png"
build_card "network" "nexus-chat-v2"  "محادثة — Supabase"        ""                         "nexus-chat-v2"   "card-5.png"
build_card "download" "media_downloader" "تحميل وسائط"           ""                         "media_downloader" "card-6.png"

echo "=== الأحجام ==="
ls -la card-*.png | awk '{print $9, $5}'
