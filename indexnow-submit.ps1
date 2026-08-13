# Submissão IndexNow (Bing, DuckDuckGo, Yandex, Seznam, Naver e Copilot)
# Uso: powershell -File indexnow-submit.ps1

$ErrorActionPreference = "Stop"

$scriptDir = $PSScriptRoot
if (-not $scriptDir) { $scriptDir = (Get-Location).Path }
$key = (Get-Content -LiteralPath (Join-Path $scriptDir "ef8b31ad-0d7b-4d69-89f7-c49fae785351.txt") -Raw).Trim()
$hostName = "addinfobrasil-lab.github.io"

$urls = @(
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/produtos.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/ia-orcamentos.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/rede-manutencao.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/cftv-proteger-negocio.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/site-ou-aplicativo.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/ebook-bastidores.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/jogos-marketing.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/ia-generativa-pmes.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/ia-atendimento.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/ia-precificacao.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/ia-tarefas-repetitivas.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/ia-time-comercial.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/ia-limites.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/ia-comecar-7-dias.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/ia-produtividade.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/dev-passo-a-passo.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/dev-responsivo.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/dev-velocidade.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/dev-uiux.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/dev-landing.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/dev-seo-basico.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/dev-seguranca-site.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/dev-ecommerce.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/app-4-perguntas.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/app-lancamento.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/app-pwa.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/jogo-baixo-custo.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/gamificacao.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/jogos-treinamento.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/infra-roteador.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/infra-cabeamento.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/infra-internet.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/infra-nuvem.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/infra-backup.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/infra-antivirus.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/infra-homeoffice.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/infra-virtualizacao.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/cftv-pequenas.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/cftv-ip-ou-analogica.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/cftv-armazenamento.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/lgpd-cftv.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/cftv-alarme.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/seguranca-dados.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/manut-pc-lento.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/manut-preventiva.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/manut-tecnico.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/manut-ciclo.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/neg-transformacao.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/neg-conversao.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/neg-roi.html",
  "https://addinfobrasil-lab.github.io/addinfobrasil-site/blog/neg-futuro.html"
)

$payload = @{
  host        = $hostName
  key         = $key
  keyLocation = "https://$hostName/addinfobrasil-site/$key.txt"
  urlList     = $urls
} | ConvertTo-Json -Depth 3

Write-Host "Enviando $($urls.Count) URLs para IndexNow..."
$resp = Invoke-RestMethod -Uri "https://api.indexnow.org/indexnow" -Method Post -ContentType "application/json; charset=utf-8" -Body $payload
Write-Host "Resposta: $($resp | ConvertTo-Json)"