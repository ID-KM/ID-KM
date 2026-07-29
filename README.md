#!/usr/bin/env python3
"""Generate GitHub Profile README for ID-KM — Arabic Islamic Design"""

import os

output_path = "/home/z/my-project/download/README.md"

readme = r"""<div align="center">

<!--
██████████████████████████████████████████████████
  ID-KM — GitHub Profile README
  تصميم عربي إسلامي أصيل
██████████████████████████████████████████████████
-->

<!-- ════════════ STYLES & ANIMATIONS ════════════ -->
<style>
  /* ── Keyframe Animations ── */
  @keyframes twinkle-a {
    0%, 100% { opacity: 0.15; }
    50% { opacity: 1; }
  }
  @keyframes twinkle-b {
    0%, 100% { opacity: 0.6; }
    50% { opacity: 0.08; }
  }
  @keyframes twinkle-c {
    0%, 100% { opacity: 0.3; }
    40% { opacity: 1; }
    70% { opacity: 0.1; }
  }
  @keyframes drift-right {
    0%   { transform: translateX(-25px); }
    100% { transform: translateX(25px); }
  }
  @keyframes drift-left {
    0%   { transform: translateX(15px); }
    100% { transform: translateX(-15px); }
  }
  @keyframes sway-a {
    0%, 100% { transform: translateX(-4px) rotate(-3deg); }
    50%      { transform: translateX(4px) rotate(3deg); }
  }
  @keyframes sway-b {
    0%, 100% { transform: translateX(-3px) rotate(-4deg); }
    50%      { transform: translateX(3px) rotate(4deg); }
  }
  @keyframes glow-pulse {
    0%, 100% { opacity: 0.55; }
    50%      { opacity: 1; }
  }
  @keyframes lantern-glow {
    0%, 100% { opacity: 0.3; }
    50%      { opacity: 0.7; }
  }

  /* ── Verse Typography ── */
  .verse-main {
    font-size: 30px;
    font-weight: bold;
    color: #d4a843;
    direction: rtl;
    line-height: 2.4;
    margin: 0;
    letter-spacing: 1px;
  }
  .verse-ref {
    font-size: 13px;
    color: #c99533;
    opacity: 0.6;
    direction: rtl;
    margin-top: -5px;
  }

  /* ── Projects Table ── */
  .proj-table {
    border-collapse: collapse;
    width: 85%;
    max-width: 580px;
    direction: rtl;
    font-size: 15px;
  }
  .proj-table td {
    padding: 10px 18px;
    border-bottom: 1px solid rgba(212, 168, 67, 0.25);
    color: #fde68a;
  }
  .proj-table td:first-child {
    text-align: right;
    white-space: nowrap;
  }
  .proj-table td:last-child {
    text-align: left;
    color: rgba(253, 232, 138, 0.55);
    font-size: 13px;
  }
  .proj-table a {
    color: #d4a843;
    text-decoration: none;
    font-weight: 600;
  }
  .proj-table a:hover {
    text-decoration: underline;
    color: #f0d78c;
  }

  /* ── Palestine Section ── */
  .palestine-verse {
    font-size: 20px;
    color: #d4a843;
    direction: rtl;
    line-height: 2.2;
    margin: 0;
  }
  .palestine-flag {
    font-size: 22px;
    letter-spacing: 6px;
    margin: 6px 0;
  }
  .palestine-dua {
    font-size: 15px;
    color: #c99533;
    direction: rtl;
    opacity: 0.75;
    line-height: 1.8;
    margin: 0;
  }

  /* ── Closing ── */
  .closing-text {
    font-size: 22px;
    color: #d4a843;
    direction: rtl;
    letter-spacing: 2px;
    margin: 0;
  }

  /* ── Separator ── */
  .gold-sep {
    border: none;
    height: 1px;
    width: 220px;
    background: linear-gradient(to right, transparent, #d4a843, transparent);
    opacity: 0.35;
  }

  /* ── Light Mode ── */
  @media (prefers-color-scheme: light) {
    .verse-main { color: #7a5c12; }
    .verse-ref  { color: #9a7a22; }
    .proj-table td        { color: #333; }
    .proj-table td:last-child { color: #777; }
    .proj-table a         { color: #7a5c12; }
    .proj-table a:hover   { color: #5a4410; }
    .palestine-verse { color: #7a5c12; }
    .palestine-dua   { color: #9a7a22; }
    .closing-text   { color: #7a5c12; }
    .gold-sep       { opacity: 0.5; }
  }
</style>

<!-- ════════════ BANNER SVG — مشهد ليلي عربي ════════════ -->
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 800 360" width="100%" style="display:block;max-width:900px;margin:auto;border-radius:12px;">
  <defs>
    <!-- Sky Gradients -->
    <linearGradient id="skyNight" x1="0" y1="0" x2="0" y2="1">
      <stop offset="0%"   stop-color="#080b1a"/>
      <stop offset="55%"  stop-color="#0f1940"/>
      <stop offset="100%" stop-color="#16244d"/>
    </linearGradient>
    <linearGradient id="skyLight" x1="0" y1="0" x2="0" y2="1">
      <stop offset="0%"   stop-color="#1e1e3a"/>
      <stop offset="55%"  stop-color="#2a2450"/>
      <stop offset="100%" stop-color="#3a2e55"/>
    </linearGradient>

    <!-- Ground Gradient -->
    <linearGradient id="groundNight" x1="0" y1="0" x2="0" y2="1">
      <stop offset="0%"  stop-color="#0c1230"/>
      <stop offset="100%" stop-color="#080b1a"/>
    </linearGradient>
    <linearGradient id="groundLight" x1="0" y1="0" x2="0" y2="1">
      <stop offset="0%"  stop-color="#2a2040"/>
      <stop offset="100%" stop-color="#1e1e3a"/>
    </linearGradient>

    <!-- Moon Glow Filter -->
    <filter id="moonGlow" x="-50%" y="-50%" width="200%" height="200%">
      <feGaussianBlur in="SourceGraphic" stdDeviation="6" result="blur1"/>
      <feGaussianBlur in="SourceGraphic" stdDeviation="2" result="blur2"/>
      <feMerge>
        <feMergeNode in="blur1"/>
        <feMergeNode in="blur2"/>
        <feMergeNode in="SourceGraphic"/>
      </feMerge>
    </filter>

    <!-- Star Glow Filter -->
    <filter id="starGlow" x="-100%" y="-100%" width="300%" height="300%">
      <feGaussianBlur stdDeviation="1.5"/>
    </filter>

    <!-- Lantern Light Filter -->
    <filter id="lanternLight" x="-50%" y="-50%" width="200%" height="200%">
      <feGaussianBlur stdDeviation="4"/>
    </filter>

    <!-- Crescent Mask -->
    <mask id="crescentMask">
      <rect width="800" height="360" fill="black"/>
      <circle cx="620" cy="82" r="36" fill="white"/>
      <circle cx="636" cy="72" r="30" fill="black"/>
    </mask>

    <!-- Banner Internal Styles for SVG Elements -->
    <style>
      /* ── Stars ── */
      .s1 { animation: twinkle-a 3s    ease-in-out infinite; }
      .s2 { animation: twinkle-b 2.5s  ease-in-out infinite 0.4s; }
      .s3 { animation: twinkle-c 4s    ease-in-out infinite 0.8s; }
      .s4 { animation: twinkle-a 3.5s  ease-in-out infinite 1.2s; }
      .s5 { animation: twinkle-b 2.8s  ease-in-out infinite 1.8s; }
      .s6 { animation: twinkle-c 3.2s  ease-in-out infinite 0.2s; }
      .s7 { animation: twinkle-a 4.2s  ease-in-out infinite 2.1s; }

      /* ── Clouds ── */
      .cloud-1 { animation: drift-right 25s ease-in-out infinite alternate; }
      .cloud-2 { animation: drift-left  30s ease-in-out infinite alternate; }
      .cloud-3 { animation: drift-right 22s ease-in-out infinite alternate 5s; }

      /* ── Lanterns ── */
      .lantern-group-a {
        transform-box: fill-box;
        transform-origin: top center;
        animation: sway-a 4.5s ease-in-out infinite;
      }
      .lantern-group-b {
        transform-box: fill-box;
        transform-origin: top center;
        animation: sway-b 5s   ease-in-out infinite 0.8s;
      }
      .lantern-group-c {
        transform-box: fill-box;
        transform-origin: top center;
        animation: sway-a 4s   ease-in-out infinite 1.5s;
      }
      .lantern-aura { animation: lantern-glow 3s ease-in-out infinite; }

      /* ── Crescent ── */
      .moon-body { animation: glow-pulse 5s ease-in-out infinite; }

      /* ── SVG Text ── */
      .sky-text {
        font-family: 'Amiri', 'Traditional Arabic', 'Noto Naskh Arabic', serif;
        fill: #d4a843;
        font-size: 28px;
      }

      /* ── Silhouette Colors ── */
      .sil  { fill: #070a18; }
      .gnd  { fill: url(#groundNight); }

      /* ── Star Dot Colors ── */
      .sd   { fill: #fde68a; }
      .sd-d { fill: #fef3c7; }

      /* ── Cloud Fill ── */
      .cld { fill: rgba(20, 30, 70, 0.35); }

      /* ── Lantern Colors ── */
      .ltn-body   { fill: #d4a843; }
      .ltn-light  { fill: #fde68a; }
      .ltn-string { stroke: #c99533; stroke-width: 0.6; }
      .ltn-aura-c { fill: #fde68a; }

      /* ── Moon Fill ── */
      .moon-c { fill: #d4a843; }

      /* ── Light Mode SVG Overrides ── */
      @media (prefers-color-scheme: light) {
        .sky-rect   { fill: url(#skyLight); }
        .gnd        { fill: url(#groundLight); }
        .sil        { fill: #15152a; }
        .sd         { fill: #e0c870; }
        .sd-d       { fill: #f0d880; }
        .cld        { fill: rgba(40, 30, 70, 0.3); }
        .moon-c     { fill: #c99533; }
        .sky-text   { fill: #c99533; }
        .ltn-body   { fill: #c99533; }
        .ltn-light  { fill: #e0c870; }
        .ltn-string { stroke: #a07820; }
        .ltn-aura-c { fill: #e0c870; }
      }
    </style>
  </defs>

  <!-- ── Sky Background ── -->
  <rect class="sky-rect" width="800" height="360" fill="url(#skyNight)"/>

  <!-- ── Ground ── -->
  <rect class="gnd" y="305" width="800" height="55"/>

  <!--
    ██████  STARS  ██████
    25 stars scattered across the sky
  -->
  <!-- Layer 1: Bright Stars -->
  <circle class="sd s1" cx="45"  cy="28"  r="1.8"/>
  <circle class="sd s2" cx="112" cy="52"  r="1.3"/>
  <circle class="sd s3" cx="175" cy="18"  r="1.6"/>
  <circle class="sd-d s4" cx="230" cy="65"  r="1.1"/>
  <circle class="sd s5" cx="295" cy="22"  r="1.5"/>
  <circle class="sd s6" cx="355" cy="48"  r="1.2"/>
  <circle class="sd-d s7" cx="410" cy="14"  r="1.4"/>
  <circle class="sd s1" cx="468" cy="58"  r="1.6"/>
  <circle class="sd s3" cx="530" cy="25"  r="1.1"/>
  <circle class="sd-d s5" cx="570" cy="42"  r="1.3"/>

  <!-- Layer 2: Dim Stars -->
  <circle class="sd s4" cx="72"  cy="72"  r="0.9"/>
  <circle class="sd s6" cx="148" cy="85"  r="1.0"/>
  <circle class="sd s2" cx="205" cy="40"  r="0.8"/>
  <circle class="sd-d s7" cx="268" cy="78"  r="1.1"/>
  <circle class="sd s3" cx="325" cy="55"  r="0.9"/>
  <circle class="sd s5" cx="390" cy="32"  r="1.0"/>
  <circle class="sd s1" cx="445" cy="70"  r="0.8"/>
  <circle class="sd s4" cx="500" cy="38"  r="1.1"/>
  <circle class="sd-d s6" cx="548" cy="68"  r="0.9"/>
  <circle class="sd s2" cx="695" cy="50"  r="1.2"/>
  <circle class="sd s7" cx="738" cy="28"  r="1.0"/>
  <circle class="sd s3" cx="770" cy="62"  r="0.8"/>
  <circle class="sd s5" cx="85"  cy="38"  r="1.0"/>
  <circle class="sd-d s1" cx="490" cy="15"  r="0.9"/>
  <circle class="sd s4" cx="155" cy="60"  r="0.7"/>

  <!-- ── Crescent Moon ── -->
  <g class="moon-body" filter="url(#moonGlow)">
    <circle cx="620" cy="82" r="36" class="moon-c" mask="url(#crescentMask)"/>
  </g>

  <!-- ── Sky Text: فإن مع العسر يسرا ── -->
  <text x="400" y="155" text-anchor="middle" class="sky-text" style="font-size:26px;">
    فَإِنَّ مَعَ الْعُسْرِ يُسْرًا
  </text>

  <!--
    ██████  CLOUDS  ██████
  -->
  <g class="cloud-1 cld">
    <ellipse cx="140" cy="105" rx="65" ry="16"/>
    <ellipse cx="165" cy="100" rx="40" ry="12"/>
    <ellipse cx="115" cy="100" rx="35" ry="10"/>
  </g>
  <g class="cloud-2 cld">
    <ellipse cx="520" cy="120" rx="55" ry="14"/>
    <ellipse cx="545" cy="115" rx="35" ry="10"/>
    <ellipse cx="500" cy="116" rx="30" ry="9"/>
  </g>
  <g class="cloud-3 cld">
    <ellipse cx="350" cy="95" rx="50" ry="13"/>
    <ellipse cx="375" cy="90" rx="32" ry="9"/>
    <ellipse cx="330" cy="91" rx="28" ry="8"/>
  </g>

  <!--
    ██████  MOSQUE SILHOUETTE  ██████
  -->
  <g class="sil">
    <!-- Main Dome -->
    <path d="
      M 285,305
      L 285,258
      Q 285,228 315,210
      Q 330,200 340,210
      Q 370,228 370,258
      L 370,305
      Z
    "/>
    <!-- Dome Finial -->
    <line x1="328" y1="200" x2="328" y2="188" stroke="#070a18" stroke-width="2"/>
    <circle cx="328" cy="185" r="3" fill="#070a18"/>
    <line x1="323" y1="185" x2="333" y2="185" stroke="#070a18" stroke-width="1.2"/>
    <!-- Left Minaret -->
    <rect x="252" y="235" width="14" height="70" rx="1"/>
    <path d="M 252,235 Q 259,212 266,235 Z"/>
    <line x1="259" y1="212" x2="259" y2="202" stroke="#070a18" stroke-width="1.5"/>
    <circle cx="259" cy="200" r="2" fill="#070a18"/>
    <!-- Right Minaret -->
    <rect x="383" y="242" width="12" height="63" rx="1"/>
    <path d="M 383,242 Q 389,222 395,242 Z"/>
    <line x1="389" y1="222" x2="389" y2="213" stroke="#070a18" stroke-width="1.5"/>
    <circle cx="389" cy="211" r="2" fill="#070a18"/>
    <!-- Small Windows on Dome -->
    <rect x="315" y="250" width="6" height="10" rx="3" fill="#0d1535"/>
    <rect x="335" y="250" width="6" height="10" rx="3" fill="#0d1535"/>
  </g>

  <!--
    ██████  OLIVE TREE — رمز فلسطين  ██████
  -->
  <g class="sil">
    <!-- Trunk (gnarled) -->
    <path d="
      M 668,305
      L 665,278
      Q 662,268 666,258
      L 670,248
      Q 674,252 672,260
      L 676,278
      L 674,305
      Z
    "/>
    <!-- Branch -->
    <path d="
      M 668,265
      Q 660,255 648,258
      Q 640,260 638,252
    " fill="none" stroke="#070a18" stroke-width="2.5"/>
    <!-- Canopy (layered ellipses) -->
    <ellipse cx="668" cy="222" rx="42" ry="32"/>
    <ellipse cx="642" cy="232" rx="28" ry="22"/>
    <ellipse cx="695" cy="228" rx="32" ry="26"/>
    <ellipse cx="668" cy="205" rx="30" ry="18"/>
    <ellipse cx="650" cy="215" rx="22" ry="16"/>
    <ellipse cx="685" cy="212" rx="25" ry="18"/>
  </g>

  <!--
    ██████  HANGING LANTERNS — فوانيس معلقة  ██████
  -->
  <!-- Lantern 1 -->
  <g class="lantern-group-a">
    <line x1="195" y1="130" x2="195" y2="170" class="ltn-string"/>
    <ellipse cx="195" cy="173" rx="2" ry="3" class="ltn-body"/>
    <rect x="187" y="176" width="16" height="22" rx="3" class="ltn-body"/>
    <rect x="191" y="198" width="8" height="3" rx="1" class="ltn-light"/>
    <!-- Lantern glow aura -->
    <ellipse class="ltn-aura-c lantern-aura" cx="195" cy="190" rx="18" ry="22" opacity="0.12"/>
  </g>

  <!-- Lantern 2 -->
  <g class="lantern-group-b">
    <line x1="265" y1="125" x2="265" y2="162" class="ltn-string"/>
    <ellipse cx="265" cy="165" rx="2" ry="3" class="ltn-body"/>
    <rect x="257" y="168" width="16" height="20" rx="3" class="ltn-body"/>
    <rect x="261" y="188" width="8" height="3" rx="1" class="ltn-light"/>
    <ellipse class="ltn-aura-c lantern-aura" cx="265" cy="182" rx="16" ry="20" opacity="0.10" style="animation-delay:1s;"/>
  </g>

  <!-- Lantern 3 -->
  <g class="lantern-group-c">
    <line x1="435" y1="128" x2="435" y2="165" class="ltn-string"/>
    <ellipse cx="435" cy="168" rx="2" ry="3" class="ltn-body"/>
    <rect x="427" y="171" width="16" height="21" rx="3" class="ltn-body"/>
    <rect x="431" y="192" width="8" height="3" rx="1" class="ltn-light"/>
    <ellipse class="ltn-aura-c lantern-aura" cx="435" cy="186" rx="17" ry="21" opacity="0.11" style="animation-delay:2s;"/>
  </g>

  <!-- ── Subtle ground olive hints ── -->
  <g opacity="0.25">
    <ellipse cx="660" cy="312" rx="50" ry="6" fill="#1a2e0a"/>
    <ellipse cx="320" cy="310" rx="70" ry="5" fill="#0a1220"/>
  </g>

</svg>

<br><br>

<!-- ════════════ الآية الكريمة ════════════ -->
<p class="verse-main">﴿ إِنَّ مَعَ الْعُسْرِ يُسْرًا ﴾</p>
<p class="verse-ref">سورة الشرح &mdash; الآية ٦</p>

<br>

<hr class="gold-sep">

<br>

<!-- ════════════ قائمة المشاريع ════════════ -->
<table class="proj-table">
  <tr>
    <td>🎤 <a href="https://github.com/ID-KM/vocal-remover-2">vocal-remover-2</a></td>
    <td>عزل صوت + تحميل</td>
  </tr>
  <tr>
    <td>🎤 <a href="https://github.com/ID-KM/vocal-remover-1">vocal-remover-1</a></td>
    <td>عزل صوت</td>
  </tr>
  <tr>
    <td>💬 <a href="https://github.com/ID-KM/haddara/tree/main/supabase">haddara</a></td>
    <td>محادثة ذكية</td>
  </tr>
  <tr>
    <td>💬 <a href="https://github.com/ID-KM/nexus-chat-v2/tree/main/supabase">nexus-chat-v2</a></td>
    <td>محادثة متقدمة</td>
  </tr>
  <tr>
    <td>📱 <a href="https://github.com/ID-KM/media_downloader">media_downloader</a></td>
    <td>تحميل وسائط</td>
  </tr>
</table>

<br>

<hr class="gold-sep">

<br>

<!-- ════════════ فلسطين — القضية المشتركة ════════════ -->

<p class="palestine-verse">
  ﴿ وَمَا لَكُمْ لَا تُقَاتِلُونَ فِي سَبِيلِ اللَّهِ وَالْمُسْتَضْعَفِينَ ﴾
</p>
<p class="verse-ref" style="margin-bottom:10px;">سورة النساء &mdash; الآية ٧٥</p>

<!-- Watermelon Palestine Symbol -->
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 120 60" width="120" height="60">
  <defs>
    <clipPath id="wmClip">
      <path d="M 10,5 A 50,50 0 0,1 110,5 L 110,55 L 10,55 Z"/>
    </clipPath>
  </defs>
  <g clip-path="url(#wmClip)">
    <!-- Rind (green) -->
    <rect x="10" y="5"  width="100" height="8"  fill="#1a5c2a"/>
    <!-- White border -->
    <rect x="10" y="13" width="100" height="4"  fill="#e8e0d0"/>
    <!-- Red flesh -->
    <rect x="10" y="17" width="100" height="38" fill="#c0392b"/>
    <!-- Seeds -->
    <ellipse cx="35" cy="32" rx="3" ry="5" fill="#1a1a1a" transform="rotate(-15 35 32)"/>
    <ellipse cx="60" cy="28" rx="3" ry="5" fill="#1a1a1a" transform="rotate(10 60 28)"/>
    <ellipse cx="85" cy="34" rx="3" ry="5" fill="#1a1a1a" transform="rotate(-8 85 34)"/>
    <ellipse cx="48" cy="42" rx="3" ry="5" fill="#1a1a1a" transform="rotate(5 48 42)"/>
    <ellipse cx="75" cy="44" rx="3" ry="5" fill="#1a1a1a" transform="rotate(-12 75 44)"/>
  </g>
</svg>

<br>

<p class="palestine-flag">🤍 فلسطين 🤍</p>

<p class="palestine-dua">
  اللهم انصر إخواننا في فلسطين، واكشف عنهم كل ضرّ وبلاء، وارزقهم النصر والصبر والثبات
</p>

<br>

<hr class="gold-sep">

<br>

<!-- ════════════ خاتمة ════════════ -->
<p class="closing-text">« مع العُسْرِ يُسْرًا »</p>

<br>

<img src="https://img.shields.io/badge/GitHub-ID--KM-181717?style=flat-square&logo=github" alt="GitHub"/>

</div>
"""

# Write the file
os.makedirs(os.path.dirname(output_path), exist_ok=True)
with open(output_path, 'w', encoding='utf-8') as f:
    f.write(readme.strip())

print(f"README.md written to: {output_path}")
print(f"File size: {os.path.getsize(output_path)} bytes")
