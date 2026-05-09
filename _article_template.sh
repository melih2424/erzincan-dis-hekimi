#!/bin/bash
# Usage: create_article FILE TITLE BADGE ICON GRADIENT AUTHOR AVCOLOR DATE READTIME CATEGORY

FILE=$1
TITLE=$2
BADGE=$3
ICON=$4
GRADIENT=$5
AUTHOR=$6
AVCOLOR=$7
DATE=$8
READTIME=$9
shift 9
CONTENT=$1

cat > "/sessions/stoic-modest-curie/mnt/outputs/erzincan-dis-hekimi/$FILE" << HTMLEOF
<!DOCTYPE html>
<html lang="tr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>$TITLE – Erzincan Diş Hekimi</title>
<meta name="description" content="$TITLE hakkında Erzincan diş hekimi uzmanlarından kapsamlı rehber.">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
<style>
:root{
  --ink-900:#07111f;--ink-800:#0f2137;--ink-700:#1a3352;
  --blue:#3b9eff;--blue-lt:#60b3ff;--blue-dim:rgba(59,158,255,.12);
  --cyan:#22d3ee;
  --surface:#ffffff;--surf-2:#f6faff;--surf-3:#eaf2ff;
  --muted:#64748b;--muted-lt:#94a3b8;
  --border:rgba(59,158,255,.14);
  --r-sm:10px;--r:16px;--r-lg:24px;
  --shadow-sm:0 2px 12px rgba(7,17,31,.08);
  --shadow:0 8px 40px rgba(7,17,31,.13);
}
*{margin:0;padding:0;box-sizing:border-box;}
html{scroll-behavior:smooth;}
body{font-family:'Inter',system-ui,sans-serif;color:var(--ink-900);background:#fff;overflow-x:hidden;-webkit-font-smoothing:antialiased;}
a{text-decoration:none;color:inherit;}
nav{position:sticky;top:0;z-index:100;display:grid;grid-template-columns:1fr auto 1fr;align-items:center;padding:0 5%;height:68px;background:rgba(255,255,255,.9);backdrop-filter:blur(18px);border-bottom:1px solid var(--border);}
.nav-brand{display:flex;align-items:center;gap:10px;font-weight:800;font-size:15px;}
.nav-brand .icon{width:34px;height:34px;border-radius:10px;background:linear-gradient(135deg,var(--blue),var(--cyan));display:flex;align-items:center;justify-content:center;}
.nav-brand .icon svg{width:18px;height:18px;fill:#fff;}
.nav-brand .line2{font-size:11px;font-weight:400;color:var(--muted);margin-top:1px;}
.nav-pill{list-style:none;display:flex;gap:2px;background:var(--surf-3);border:1px solid var(--border);border-radius:40px;padding:5px;}
.nav-pill li a{display:block;padding:6px 14px;border-radius:30px;font-size:13px;font-weight:500;color:var(--muted);transition:.2s;}
.nav-pill li a:hover,.nav-pill li a.active{background:#fff;color:var(--ink-900);box-shadow:var(--shadow-sm);}
.nav-actions{display:flex;align-items:center;gap:10px;justify-content:flex-end;}
.nav-cta{background:linear-gradient(135deg,var(--blue),var(--cyan));color:#fff;padding:9px 18px;border-radius:30px;font-size:13px;font-weight:700;}
.art-hero{height:320px;position:relative;display:flex;align-items:center;justify-content:center;text-align:center;background:$GRADIENT;}
.art-hero-icon{font-size:80px;margin-bottom:16px;}
.art-hero-badge{display:inline-block;background:rgba(0,0,0,.35);backdrop-filter:blur(8px);color:#fff;font-size:12px;font-weight:600;padding:5px 14px;border-radius:20px;margin-bottom:12px;}
.art-hero h1{font-size:clamp(1.5rem,4vw,2.4rem);font-weight:900;color:#fff;line-height:1.2;max-width:680px;padding:0 20px;letter-spacing:-.5px;}
.art-body{max-width:720px;margin:0 auto;padding:52px 24px 80px;}
.art-meta{display:flex;align-items:center;gap:14px;margin-bottom:40px;padding-bottom:24px;border-bottom:1px solid var(--border);}
.art-av{width:44px;height:44px;border-radius:50%;background:$AVCOLOR;display:flex;align-items:center;justify-content:center;font-size:13px;font-weight:800;color:#fff;flex-shrink:0;}
.art-meta-info{flex:1;}
.art-meta-name{font-size:14px;font-weight:700;}
.art-meta-sub{font-size:12px;color:var(--muted);margin-top:2px;}
.art-meta-rt{font-size:12px;color:var(--muted);display:flex;align-items:center;gap:4px;}
.art-body h2{font-size:1.3rem;font-weight:800;margin:36px 0 12px;color:var(--ink-900);}
.art-body p{font-size:15.5px;line-height:1.8;color:#334155;margin-bottom:16px;}
.art-body ul{padding-left:20px;margin-bottom:16px;}
.art-body ul li{font-size:15.5px;line-height:1.8;color:#334155;margin-bottom:6px;}
.art-body .tip{background:var(--surf-2);border-left:3px solid var(--blue);border-radius:0 var(--r-sm) var(--r-sm) 0;padding:16px 20px;margin:24px 0;font-size:14.5px;color:var(--ink-700);line-height:1.7;}
.cta-box{background:linear-gradient(135deg,var(--ink-900),var(--ink-800));border-radius:var(--r-lg);padding:36px;text-align:center;margin-top:52px;}
.cta-box h3{font-size:1.3rem;font-weight:800;color:#fff;margin-bottom:8px;}
.cta-box p{font-size:14px;color:rgba(255,255,255,.5);margin-bottom:24px;}
.cta-btn{display:inline-block;background:linear-gradient(135deg,var(--blue),var(--cyan));color:#fff;padding:12px 28px;border-radius:30px;font-size:14px;font-weight:700;}
.back-link{display:inline-flex;align-items:center;gap:6px;font-size:13px;color:var(--blue);margin-bottom:28px;}
footer{background:var(--ink-900);color:rgba(255,255,255,.5);padding:36px 6%;text-align:center;font-size:13px;}
footer a{color:rgba(255,255,255,.4);margin:0 8px;}
@media(max-width:768px){nav{grid-template-columns:auto 1fr;}.nav-pill,.nav-actions{display:none;}}
</style>
</head>
<body>
<nav>
  <a href="dis-klinigi.html" class="nav-brand">
    <div class="icon"><svg viewBox="0 0 24 24"><path d="M12 2C9.5 2 7.5 3.5 6.5 5.5 5.5 4.5 4 4 3 5 1.5 6.5 2 9 3 11c1 2 2 3.5 2.5 5 .5 1.5.5 3.5 1.5 5.5.5 1 1.5 1.5 2.5 1C10.5 22 11 21 12 21s1.5 1 2.5 1.5c1 .5 2 0 2.5-1C18 19.5 18 17.5 18.5 16c.5-1.5 1.5-3 2.5-5 1-2 1.5-4.5 0-6-1-1-2.5-.5-3.5.5C16.5 3.5 14.5 2 12 2Z"/></svg></div>
    <div><div>Erzincan <em style="font-style:normal;color:var(--blue);">Diş Hekimi</em></div><div class="line2">Sağlıklı Gülüşler</div></div>
  </a>
  <ul class="nav-pill">
    <li><a href="dis-klinigi.html#hizmetler">Hizmetler</a></li>
    <li><a href="dis-klinigi.html#hakkimizda">Hakkımızda</a></li>
    <li><a href="blog.html" class="active">Blog</a></li>
    <li><a href="dis-klinigi.html#sss">SSS</a></li>
    <li><a href="dis-klinigi.html#yorumlar">Yorumlar</a></li>
    <li><a href="dis-klinigi.html#randevu">İletişim</a></li>
  </ul>
  <div class="nav-actions">
    <a href="dis-klinigi.html#randevu" class="nav-cta">Randevu Al</a>
  </div>
</nav>

<div class="art-hero">
  <div><div class="art-hero-icon">$ICON</div><div class="art-hero-badge">$BADGE</div><h1>$TITLE</h1></div>
</div>

<div class="art-body">
  <a class="back-link" href="blog.html">← Blog'a Dön</a>
  <div class="art-meta">
    <div class="art-av">$(echo $AUTHOR | tr 'a-zçğıöşüA-ZÇĞİÖŞÜ' 'A-ZA-Z' | grep -oP '^[A-Z]'</div>
    <div class="art-meta-info">
      <div class="art-meta-name">$AUTHOR</div>
      <div class="art-meta-sub">$DATE · $BADGE</div>
    </div>
    <div class="art-meta-rt">⏱ $READTIME okuma</div>
  </div>

$CONTENT

  <div class="cta-box">
    <h3>Uzmanımızla Görüşün</h3>
    <p>Sorularınız için kliniğimizi arayın veya online randevu alın.</p>
    <a class="cta-btn" href="dis-klinigi.html#randevu">Ücretsiz Randevu →</a>
  </div>
</div>

<footer>
  <span>© 2026 Erzincan Diş Hekimi</span>
  <a href="dis-klinigi.html">Ana Sayfa</a>
  <a href="blog.html">Blog</a>
  <a href="dis-klinigi.html#randevu">Randevu</a>
</footer>
</body>
</html>
HTMLEOF
echo "$FILE oluşturuldu"
