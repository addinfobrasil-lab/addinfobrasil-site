# Gerador do blog da AddInfo Brasil
# Uso: powershell -File generate-blog.ps1
# Cria: blog/*.html, blog.html, sitemap.xml, llms.txt, indexnow-submit.ps1, .github/workflows/indexnow.yml

$ErrorActionPreference = "Stop"
$root = Split-Path $PSScriptRoot -Parent
$site = "https://addinfobrasil-lab.github.io/addinfobrasil-site"
$hostName = "addinfobrasil-lab.github.io"

. (Join-Path $PSScriptRoot "articles.ps1")
$articles = @($existing + $part1 + $part2)

# ---------- helpers ----------
function Esc($s){ if($null -eq $s){ return '' }; $s.Replace("&", "&amp;").Replace('"', "&quot;") }

$catStyle = @{
  "Inteligência Artificial" = @{ grad = "var(--blue), var(--indigo)"; svg = '<path d="M12 2a4 4 0 0 1 4 4v1a4 4 0 0 1-4 4 4 4 0 0 1-4-4V6a4 4 0 0 1 4-4z"/><path d="M6 21v-2a4 4 0 0 1 4-4h4a4 4 0 0 1 4 4v2"/>' }
  "Desenvolvimento"         = @{ grad = "var(--cyan), var(--blue)"; svg = '<polyline points="16 18 22 12 16 6"/><polyline points="8 6 2 12 8 18"/>' }
  "Aplicativos"             = @{ grad = "var(--sky), var(--navy)"; svg = '<rect x="5" y="2" width="14" height="20" rx="2"/><line x1="12" y1="18" x2="12.01" y2="18"/>' }
  "Jogos"                   = @{ grad = "var(--blue), #0B0B28"; svg = '<rect x="2" y="3" width="20" height="14" rx="2"/><line x1="8" y1="21" x2="16" y2="21"/><line x1="12" y1="17" x2="12" y2="21"/>' }
  "Infraestrutura"          = @{ grad = "var(--sky), var(--navy)"; svg = '<path d="M5 12.55a11 11 0 0 1 14.08 0"/><path d="M1.42 9a16 16 0 0 1 21.16 0"/><path d="M8.53 16.11a6 6 0 0 1 6.95 0"/><line x1="12" y1="20" x2="12.01" y2="20"/>' }
  "CFTV e Segurança"        = @{ grad = "var(--indigo), #0B0B28"; svg = '<path d="M23 7l-7 5 7 5V7z"/><rect x="1" y="5" width="15" height="14" rx="2"/>' }
  "Manutenção e Suporte"    = @{ grad = "var(--navy), var(--indigo)"; svg = '<path d="M14.7 6.3a1 1 0 0 0 0 1.4l1.6 1.6a1 1 0 0 0 1.4 0l3.77-3.77a6 6 0 0 1-7.94 7.94l-6.91 6.91a2.12 2.12 0 0 1-3-3l6.91-6.91a6 6 0 0 1 7.94-7.94l-3.76 3.76z"/>' }
  default                   = @{ grad = "var(--blue), var(--indigo)"; svg = '<path d="M4 19.5A2.5 2.5 0 0 1 6.5 17H20"/><path d="M6.5 2H20v20H6.5A2.5 2.5 0 0 1 4 19.5v-15A2.5 2.5 0 0 1 6.5 2z"/>' }
}

function CtaButton($a){
  if($a.ctaUrl){ '<a href="' + $a.ctaUrl + '" target="_blank" rel="noopener" class="btn btn-primary">' + $a.ctaLabel + '</a>' }
  else { '<a href="https://wa.me/5521991530552" target="_blank" rel="noopener" class="btn btn-primary">Falar no WhatsApp</a>' }
}

$navItems = @'
    <ul class="nav-links" id="navLinks">
      <li><a href="{INDEX}">Início</a></li>
      <li><a href="{PRODUTOS}">Produtos &amp; Serviços</a></li>
      <li><a href="{BLOG}" class="active">Blog</a></li>
      <li><a href="{INDEX}#sobre">Sobre</a></li>
      <li><a href="{INDEX}#contato">Contato</a></li>
    </ul>
    <div class="nav-cta">
      <a href="https://wa.me/5521991530552" target="_blank" rel="noopener" class="btn btn-ghost btn-sm">Falar no WhatsApp</a>
      <button class="nav-toggle" id="navToggle" aria-label="Abrir menu" aria-expanded="false">
        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M3 6h18M3 12h18M3 18h18"/></svg>
      </button>
    </div>
'@

function StripQuotes([string]$s){
  if ($null -eq $s) { return '' }
  return $s.Replace('"','').Replace("`r`n", " ")
}

function NavHtml($prefix){
  $navItems -replace "{INDEX}", "$prefix/index.html" -replace "{PRODUTOS}", "$prefix/produtos.html" -replace "{BLOG}", "$prefix/blog.html"
}

$bannerRings = @'
  <div class="rings" aria-hidden="true">
    <svg class="ring-spin" width="700" height="700" viewBox="0 0 700 700" style="right:-200px; top:-260px;">
      <circle cx="350" cy="350" r="320" fill="none" stroke="#29A9E0" stroke-width="20" stroke-linecap="round" stroke-dasharray="650 1400" opacity="0.5"/>
    </svg>
    <svg class="ring-spin reverse" width="560" height="560" viewBox="0 0 560 560" style="right:-120px; top:-160px;">
      <circle cx="280" cy="280" r="240" fill="none" stroke="#4DD8F2" stroke-width="14" stroke-linecap="round" stroke-dasharray="380 1120" opacity="0.55"/>
    </svg>
  </div>
'@

$footerHtml = @'
<footer class="site-footer" id="contato">
  <div class="wrap">
    <div class="footer-grid">
      <div>
        <div class="footer-brand">
          <img src="{ASSETS}/logo-transparent.png" alt="AddInfo Brasil">
          <span>AddInfo Brasil</span>
        </div>
        <p style="font-size:14px; max-width:320px; color:rgba(255,255,255,0.6);">Empresa de Tecnologia e Engenharia, Desenvolvimento e Infraestrutura. Tudo para a sua necessidade!</p>
      </div>
      <div class="footer-col">
        <h4>Navegação</h4>
        <ul>
          <li><a href="{INDEX}">Início</a></li>
          <li><a href="{PRODUTOS}">Produtos &amp; Serviços</a></li>
          <li><a href="{BLOG}">Blog</a></li>
          <li><a href="{INDEX}#sobre">Sobre</a></li>
        </ul>
      </div>
      <div class="footer-col">
        <h4>Contato</h4>
        <ul class="footer-contact">
          <li>
            <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72c.127.96.361 1.903.7 2.81a2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45c.907.339 1.85.573 2.81.7A2 2 0 0 1 22 16.92z"/></svg>
            <a href="https://wa.me/5521991530552" target="_blank" rel="noopener">(21) 99153-0552</a>
          </li>
          <li>
            <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="2" y="4" width="20" height="16" rx="2"/><path d="M22 6 12 13 2 6"/></svg>
            <a href="mailto:addinfobrasil@gmail.com">addinfobrasil@gmail.com</a>
          </li>
          <li>
            <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="2" y="2" width="20" height="20" rx="5"/><path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"/><line x1="17.5" y1="6.5" x2="17.51" y2="6.5"/></svg>
            <a href="https://instagram.com/addinfobrasil" target="_blank" rel="noopener">@addinfobrasil</a>
          </li>
        </ul>
      </div>
    </div>
    <div class="footer-bottom">
      <span>© <span id="year">2026</span> AddInfo Brasil. Todos os direitos reservados.</span>
      <div class="footer-social">
        <a href="https://wa.me/5521991530552" target="_blank" rel="noopener" aria-label="WhatsApp"><svg viewBox="0 0 24 24" fill="currentColor"><path d="M12.04 2C6.58 2 2.13 6.45 2.13 11.91c0 1.75.46 3.45 1.32 4.95L2 22l5.28-1.38a9.9 9.9 0 0 0 4.76 1.21h.01c5.46 0 9.91-4.45 9.91-9.91C21.96 6.45 17.5 2 12.04 2zm5.8 14.02c-.24.68-1.4 1.3-1.94 1.38-.5.08-1.12.11-1.8-.11a15.6 15.6 0 0 1-1.66-.6c-2.93-1.26-4.84-4.19-4.98-4.38-.15-.19-1.19-1.58-1.19-3.02 0-1.43.75-2.13 1.02-2.42.27-.29.58-.36.78-.36h.55c.18 0 .42-.07.65.5.24.58.82 2 .89 2.15.07.15.12.32.02.51-.09.19-.14.31-.28.48-.14.17-.29.37-.42.5-.14.14-.28.29-.12.57.15.28.68 1.13 1.47 1.83 1.01.9 1.87 1.19 2.15 1.32.28.14.44.12.6-.07.17-.19.71-.83.9-1.11.19-.28.38-.24.63-.14.26.09 1.65.78 1.93.92.28.14.47.21.53.33.07.12.07.68-.17 1.36z"/></svg></a>
        <a href="https://instagram.com/addinfobrasil" target="_blank" rel="noopener" aria-label="Instagram"><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><rect x="2" y="2" width="20" height="20" rx="5"/><path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"/><line x1="17.5" y1="6.5" x2="17.51" y2="6.5"/></svg></a>
        <a href="mailto:addinfobrasil@gmail.com" aria-label="E-mail"><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><rect x="2" y="4" width="20" height="16" rx="2"/><path d="M22 6 12 13 2 6"/></svg></a>
      </div>
    </div>
  </div>
</footer>

<a href="https://wa.me/5521991530552" target="_blank" rel="noopener" class="wa-float" aria-label="Falar no WhatsApp">
  <svg viewBox="0 0 24 24" fill="currentColor"><path d="M12.04 2C6.58 2 2.13 6.45 2.13 11.91c0 1.75.46 3.45 1.32 4.95L2 22l5.28-1.38a9.9 9.9 0 0 0 4.76 1.21h.01c5.46 0 9.91-4.45 9.91-9.91C21.96 6.45 17.5 2 12.04 2zm5.8 14.02c-.24.68-1.4 1.3-1.94 1.38-.5.08-1.12.11-1.8-.11a15.6 15.6 0 0 1-1.66-.6c-2.93-1.26-4.84-4.19-4.98-4.38-.15-.19-1.19-1.58-1.19-3.02 0-1.43.75-2.13 1.02-2.42.27-.29.58-.36.78-.36h.55c.18 0 .42-.07.65.5.24.58.82 2 .89 2.15.07.15.12.32.02.51-.09.19-.14.31-.28.48-.14.17-.29.37-.42.5-.14.14-.28.29-.12.57.15.28.68 1.13 1.47 1.83 1.01.9 1.87 1.19 2.15 1.32.28.14.44.12.6-.07.17-.19.71-.83.9-1.11.19-.28.38-.24.63-.14.26.09 1.65.78 1.93.92.28.14.47.21.53.33.07.12.07.68-.17 1.36z"/></svg>
</a>
'@

function FooterHtml($prefix){
  $a = "{ASSETS}" ; if($prefix -eq ""){ $a = "assets" } else { $a = "$prefix/assets" }
  $footerHtml -replace "{ASSETS}", $a -replace "{INDEX}", "$prefix/index.html" -replace "{PRODUTOS}", "$prefix/produtos.html" -replace "{BLOG}", "$prefix/blog.html"
}

# ---------- metadados ----------
function HeadMeta($a, $prefix){
  $page = "$prefix/blog/$($a.slug).html"
  $desc = $a.description
  @"
<meta charset="UTF-8">
<meta name="msvalidate.01" content="A0D180BF7BC9C34B890C0C24056C2842" />
<title>$(Esc $a.title) — Blog AddInfo Brasil</title>
<meta name="description" content="$(Esc $desc)">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="robots" content="index, follow, max-image-preview:large, max-snippet:-1">
<meta name="theme-color" content="#12123A">
<meta name="author" content="AddInfo Brasil">
<link rel="canonical" href="$site/$page">
<meta property="og:type" content="article">
<meta property="og:site_name" content="AddInfo Brasil">
<meta property="og:locale" content="pt_BR">
<meta property="og:url" content="$site/$page">
<meta property="og:title" content="$(Esc $a.title)">
<meta property="og:description" content="$(Esc $desc)">
<meta property="og:image" content="$site/assets/logo-mark.png">
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="$(Esc $a.title)">
<meta name="twitter:description" content="$(Esc $desc)">
<meta name="twitter:image" content="$site/assets/logo-mark.png">
<link rel="icon" href="$prefix/assets/favicon-32.png" sizes="32x32" type="image/png">
<link rel="apple-touch-icon" href="$prefix/assets/favicon-180.png">
<link rel="stylesheet" href="$prefix/styles.css">
"@
}

function LdJson($a, $page){
$json = @"
{
  "@context": "https://schema.org",
  "@graph": [
    {
      "@type": "BreadcrumbList",
      "itemListElement": [
        { "@type": "ListItem", "position": 1, "name": "Início", "item": "$site/" },
        { "@type": "ListItem", "position": 2, "name": "Blog", "item": "$site/blog.html" },
        { "@type": "ListItem", "position": 3, "name": "$(StripQuotes $a.title)", "item": "$site/$page" }
      ]
    },
    {
      "@type": "BlogPosting",
      "headline": "$(StripQuotes $a.title)",
      "description": "$(StripQuotes $a.description)",
      "image": "$site/assets/logo-mark.png",
      "datePublished": "$($a.dateISO)",
      "dateModified": "$($a.dateISO)",
      "author": { "@type": "Organization", "name": "AddInfo Brasil", "url": "$site/" },
      "publisher": { "@type": "Organization", "name": "AddInfo Brasil", "url": "$site/" },
      "mainEntityOfPage": { "@type": "WebPage", "@id": "$site/$page" },
      "inLanguage": "pt-BR"
    }
  ]
}
"@
  $json
}

function BodyHtml($a){
  $sb = New-Object System.Text.StringBuilder
  foreach($s in $a.sections){
    [void]$sb.AppendLine("      <h2>$(Esc $s.h2)</h2>")
    if($s.lead){ [void]$sb.AppendLine("      <p>$($s.lead)</p>") }
    foreach($p in $s.paragraphs){ [void]$sb.AppendLine("      <p>$p</p>") }
    if($s.list){
      [void]$sb.AppendLine("      <ul>")
      foreach($li in $s.list){ [void]$sb.AppendLine("        <li>$li</li>") }
      [void]$sb.AppendLine("      </ul>")
    }
    if($s.quote){ [void]$sb.AppendLine("      <blockquote><p>$($s.quote)</p></blockquote>") }
  }
  $sb.ToString()
}

function New-ArticlePage($a){
  $page = "blog/$($a.slug).html"
  $cat = if($catStyle.ContainsKey($a.category)){ $catStyle[$a.category] } else { $catStyle["default"] }

  @"
<!DOCTYPE html>
<html lang="pt-BR">
<head>
$(HeadMeta $a "")
<script type="application/ld+json">
$(LdJson $a $page)
</script>
</head>
<body>

<header class="site-header">
  <nav class="nav">
    <a href="../index.html" class="nav-brand">
      <img src="../assets/logo-transparent.png" alt="AddInfo Brasil">
      <span>AddInfo Brasil</span>
    </a>
$(NavHtml "..")
  </nav>
</header>

<section class="page-banner">
$bannerRings
  <div class="wrap">
    <span class="eyebrow on-dark">Blog</span>
    <h1>$(Esc $a.title)</h1>
  </div>
</section>

<article class="article">
  <div class="wrap">
    <div class="article-header reveal">
      <a href="../blog.html" class="article-back">← Voltar ao blog</a>
      <div class="article-meta"><span class="tag">$(Esc $a.category)</span><span>·</span><span>$($a.minutes)</span><span>·</span><span>$($a.date)</span></div>
    </div>
    <div class="article-body reveal">
$(BodyHtml $a)
    </div>
    <div class="article-cta reveal">
      <div class="cta-banner">
        <div>
          <h2>$(Esc $a.ctaTitle)</h2>
          <p>$(Esc $a.ctaText)</p>
        </div>
        $(CtaButton $a)
      </div>
    </div>
  </div>
</article>

$(FooterHtml "..")

<script src="../script.js"></script>
</body>
</html>
"@
}

function New-CardHtml($a, $i){
  $cat = if($catStyle.ContainsKey($a.category)){ $catStyle[$a.category] } else { $catStyle["default"] }
  $hue = @("#29A9E0","#0090E3","#4DD8F2","#242F7A","#12123A")[$i % 5]
  @"
      <article class="post-card reveal">
        <a href="blog/$($a.slug).html" class="post-cover" style="background:linear-gradient(135deg, $($cat.grad));">
          <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6">$($cat.svg)</svg>
        </a>
        <div class="post-body">
          <div class="post-meta"><span class="tag">$(Esc $a.category)</span><span>·</span><span>$($a.minutes)</span></div>
          <h3>$(Esc $a.title)</h3>
          <p>$(Esc $a.excerpt)</p>
          <a href="blog/$($a.slug).html" class="read-more">Ler artigo →</a>
        </div>
      </article>
"@
}

function New-BlogJsonLd(){
  $posts = ($articles | ForEach-Object {
    '        { "@type": "BlogPosting", "name": "' + (StripQuotes $_.title) + '", "url": "' + $site + '/blog/' + $_.slug + '.html" }'
  }) -join ",`r`n"
@"
{
  "@context": "https://schema.org",
  "@graph": [
    {
      "@type": "BreadcrumbList",
      "itemListElement": [
        { "@type": "ListItem", "position": 1, "name": "Início", "item": "$site/" },
        { "@type": "ListItem", "position": 2, "name": "Blog", "item": "$site/blog.html" }
      ]
    },
    {
      "@type": "WebPage",
      "@id": "$site/blog.html#webpage",
      "url": "$site/blog.html",
      "name": "Blog — AddInfo Brasil",
      "inLanguage": "pt-BR"
    },
    {
      "@type": "Blog",
      "name": "Blog da AddInfo Brasil",
      "url": "$site/blog.html",
      "description": "Anotações da equipe AddInfo Brasil sobre inteligência artificial, infraestrutura, segurança e desenvolvimento.",
      "blogPost": [
$posts
      ]
    }
  ]
}
"@
}

function New-BlogPage(){
  $cards = ($articles | ForEach-Object { New-CardHtml $_ 0 }) -join "`r`n"
  $ld = New-BlogJsonLd
@"
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="msvalidate.01" content="A0D180BF7BC9C34B890C0C24056C2842" />
<title>Blog — AddInfo Brasil</title>
<meta name="description" content="Artigos sobre tecnologia, inteligência artificial, infraestrutura e desenvolvimento, escritos pela equipe da AddInfo Brasil.">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="robots" content="index, follow, max-image-preview:large, max-snippet:-1">
<meta name="theme-color" content="#12123A">
<meta name="author" content="AddInfo Brasil">
<meta name="keywords" content="blog tecnologia, inteligência artificial, infraestrutura, redes, CFTV, segurança, desenvolvimento, jogos">
<link rel="canonical" href="$site/blog.html">
<meta property="og:type" content="website">
<meta property="og:site_name" content="AddInfo Brasil">
<meta property="og:locale" content="pt_BR">
<meta property="og:url" content="$site/blog.html">
<meta property="og:title" content="Blog — AddInfo Brasil">
<meta property="og:description" content="Anotações da equipe AddInfo Brasil sobre inteligência artificial, infraestrutura, segurança e desenvolvimento.">
<meta property="og:image" content="$site/assets/logo-mark.png">
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="Blog — AddInfo Brasil">
<meta name="twitter:description" content="Anotações da equipe AddInfo Brasil sobre inteligência artificial, infraestrutura, segurança e desenvolvimento.">
<meta name="twitter:image" content="$site/assets/logo-mark.png">
<link rel="icon" href="assets/favicon-32.png" sizes="32x32" type="image/png">
<link rel="apple-touch-icon" href="assets/favicon-180.png">
<link rel="stylesheet" href="styles.css">
<script type="application/ld+json">
$ld
</script>
</head>
<body>

<header class="site-header">
  <nav class="nav">
    <a href="index.html" class="nav-brand">
      <img src="assets/logo-transparent.png" alt="AddInfo Brasil">
      <span>AddInfo Brasil</span>
    </a>
$(NavHtml "")
  </nav>
</header>

<section class="page-banner">
$bannerRings
  <div class="wrap">
    <span class="eyebrow on-dark">Blog</span>
    <h1>Ideias sobre tecnologia, direto ao ponto.</h1>
    <p>Anotações da equipe AddInfo Brasil sobre inteligência artificial, infraestrutura, segurança e desenvolvimento.</p>
  </div>
</section>

<section class="section">
  <div class="wrap">
    <div class="blog-grid">

$cards

    </div>

    <p class="blog-note reveal">💡 Quer sugerir um tema? Fale com a gente pelo WhatsApp — a sua dúvida pode virar o próximo artigo.</p>
  </div>
</section>

<section class="section section-alt" style="padding-top:0; background:var(--paper);">
  <div class="wrap">
    <div class="cta-banner reveal">
      <div>
        <h2>Quer receber novidades?</h2>
        <p>Fala com a gente pelo WhatsApp ou segue a AddInfo Brasil no Instagram para acompanhar os próximos conteúdos.</p>
      </div>
      <a href="https://instagram.com/addinfobrasil" target="_blank" rel="noopener" class="btn btn-primary">Seguir no Instagram</a>
    </div>
  </div>
</section>

$(FooterHtml "")

<script src="script.js"></script>
</body>
</html>
"@
}

# ---------- gerar ----------
$blogDir = Join-Path $root "blog"
if(-not (Test-Path $blogDir)){ New-Item -ItemType Directory -Path $blogDir | Out-Null }

foreach($a in $articles){
  if($a.generate){
    $html = New-ArticlePage $a
    $file = Join-Path $blogDir "$($a.slug).html"
    [System.IO.File]::WriteAllText($file, $html, [System.Text.Encoding]::UTF8)
    Write-Host "Gerado blog/$($a.slug).html"
  } else {
    Write-Host "Mantido blog/$($a.slug).html (existente)"
  }
}

$blogHtml = New-BlogPage
[System.IO.File]::WriteAllText((Join-Path $root "blog.html"), $blogHtml, [System.Text.Encoding]::UTF8)
Write-Host "Gerado blog.html"

# sitemap.xml
$sb = New-Object System.Text.StringBuilder
[void]$sb.AppendLine('<?xml version="1.0" encoding="UTF-8"?>')
[void]$sb.AppendLine('<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">')
$pages = @(@{ loc="$site/"; pri="1.0" }, @{ loc="$site/produtos.html"; pri="0.9" }, @{ loc="$site/blog.html"; pri="0.8" })
foreach($p in $pages){
  [void]$sb.AppendLine("  <url>`n    <loc>$($p.loc)</loc>`n    <lastmod>2026-08-12</lastmod>`n    <changefreq>monthly</changefreq>`n    <priority>$($p.pri)</priority>`n  </url>")
}
$i = 0
foreach($a in $articles){
  $pri = if($i % 2 -eq 0){ "0.7" } else { "0.6" }
  [void]$sb.AppendLine("  <url>`n    <loc>$site/blog/$($a.slug).html</loc>`n    <lastmod>2026-08-12</lastmod>`n    <changefreq>yearly</changefreq>`n    <priority>$pri</priority>`n  </url>")
  $i++
}
[void]$sb.AppendLine('</urlset>')
[System.IO.File]::WriteAllText((Join-Path $root "sitemap.xml"), $sb.ToString(), [System.Text.Encoding]::UTF8)
Write-Host "Gerado sitemap.xml ($($articles.Count) artigos)"

# indexnow-submit.ps1
$urls = @($pages | ForEach-Object { $_.loc }) + @($articles | ForEach-Object { "$site/blog/$($_.slug).html" })
$urlList = ($urls | ForEach-Object { "  `"$_`"" }) -join ",`r`n"
$submit = @"
# Submissão IndexNow (Bing, DuckDuckGo, Yandex, Seznam, Naver e Copilot)
# Uso: powershell -File indexnow-submit.ps1

`$ErrorActionPreference = "Stop"

`$scriptDir = `$PSScriptRoot
if (-not `$scriptDir) { `$scriptDir = (Get-Location).Path }
`$key = (Get-Content -LiteralPath (Join-Path `$scriptDir "ef8b31ad-0d7b-4d69-89f7-c49fae785351.txt") -Raw).Trim()
`$hostName = "$hostName"

`$urls = @(
$urlList
)

`$payload = @{
  host        = `$hostName
  key         = `$key
  keyLocation = "https://`$hostName/addinfobrasil-site/`$key.txt"
  urlList     = `$urls
} | ConvertTo-Json -Depth 3

Write-Host "Enviando `$(`$urls.Count) URLs para IndexNow..."
`$resp = Invoke-RestMethod -Uri "https://api.indexnow.org/indexnow" -Method Post -ContentType "application/json; charset=utf-8" -Body `$payload
Write-Host "Resposta: `$(`$resp | ConvertTo-Json)"
"@
[System.IO.File]::WriteAllText((Join-Path $root "indexnow-submit.ps1"), $submit, [System.Text.Encoding]::UTF8)
Write-Host "Gerado indexnow-submit.ps1 ($($urls.Count) URLs)"

# workflow yml
$urlListY = ($urls | ForEach-Object { "`"$_`"" }) -join ",`r`n            "
$wfDir = Join-Path $root ".github\workflows"
if(-not (Test-Path $wfDir)){ New-Item -ItemType Directory -Path $wfDir -Force | Out-Null }
$yml = @"
name: IndexNow Submit

on:
  push:
    branches: [ main ]
  workflow_dispatch:

permissions:
  contents: read

jobs:
  submit:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4

      - name: Aguardar deploy do GitHub Pages
        run: sleep 90

      - name: Submeter URLs ao IndexNow (Bing, DuckDuckGo, Yandex, Seznam, Naver)
        shell: pwsh
        run: |
          `$key = (Get-Content -Raw "ef8b31ad-0d7b-4d69-89f7-c49fae785351.txt").Trim()
          `$hostName = "$hostName"
          `$urls = @(
            $urlListY
          )
          `$payload = @{
            host        = `$hostName
            key         = `$key
            keyLocation = "https://`$hostName/addinfobrasil-site/`$key.txt"
            urlList     = `$urls
          } | ConvertTo-Json
          `$r = Invoke-WebRequest -Uri "https://api.indexnow.org/indexnow" -Method Post -ContentType "application/json; charset=utf-8" -Body `$payload -UseBasicParsing -TimeoutSec 60
          Write-Host "IndexNow HTTP `$(`$r.StatusCode)"
          if (`$r.StatusCode -eq 200 -or `$r.StatusCode -eq 202) { Write-Host "URLs aceitas pelos motores." } else { throw "Falha na submissao IndexNow: HTTP `$(`$r.StatusCode)" }
"@
[System.IO.File]::WriteAllText((Join-Path $wfDir "indexnow.yml"), $yml, [System.Text.Encoding]::UTF8)
Write-Host "Gerado .github/workflows/indexnow.yml"

Write-Host "Concluido. Total de artigos: $($articles.Count)"