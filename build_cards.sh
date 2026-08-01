#!/bin/bash
# بناء بطاقات المشاريع — ImageMagick مع خط Amiri
cd /tmp/ID-KM-profile/assets
AMIRI="/usr/share/fonts/TTF/Amiri-Bold.ttf"
DARK="#0d1b2e"; CARD="#16244d"; GOLD="#d4a843"; LGOLD="#f0d78c"; CREAM="#fef3c7"

build_card() {
  local icon="$1" title="$2" l1="$3" l2="$4" repo="$5" out="$6"
  magick -size 520x160 xc:none \
    -fill "$DARK" -draw "roundrectangle 3,3 517,157 16,16" \
    -stroke "$GOLD" -strokewidth 3 -fill none -draw "roundrectangle 3,3 517,157 16,16" \
    -fill "$CARD" -draw "roundrectangle 14,14 106,146 12,12" \
    "icons/${icon}.png" -geometry +26+40 -composite \
    -direction rtl -font "$AMIRI" \
    -fill "$LGOLD" -pointsize 26 -annotate +490+45 "$title" \
    -fill "$CREAM" -pointsize 18 -annotate +490+82 "$l1" \
    -fill "$CREAM" -pointsize 18 -annotate +490+110 "$l2" \
    -fill "$GOLD" -pointsize 15 -annotate +490+142 "github.com/ID-KM/${repo}" \
    "$out"
}

build_card "midad"    "midad"           "قارئ كتب عربي — PDF + EPUB" "بحث في مكتبة Archive.org" "midad"          "card-1.png"
build_card "music2"   "music-remover-2" "عزل صوت + تحميل"            ""                         "music-remover-2" "card-2.png"
build_card "music1"   "music-remover-1" "عزل صوت"                    ""                         "music-remover-1" "card-3.png"
build_card "chat"     "haddara"         "محادثة — Supabase"          ""                         "haddara"         "card-4.png"
build_card "nexus"    "nexus-chat-v2"   "محادثة — Supabase"          ""                         "nexus-chat-v2"   "card-5.png"
build_card "download" "media_downloader" "تحميل وسائط"                ""                         "media_downloader" "card-6.png"

echo "=== الأحجام (يجب أن تكون > 8KB) ==="
ls -la card-*.png | awk '{print $9, $5}'
