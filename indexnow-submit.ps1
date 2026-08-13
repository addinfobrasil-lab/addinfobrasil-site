# Submissão IndexNow (Bing, DuckDuckGo, Yandex, Seznam e Copilot)
# Uso: powershell -File indexnow-submit.ps1
# Requisito: o arquivo <chave>.txt deve estar publicado na raiz do site.

$ErrorActionPreference = "Stop"

$key = (Get-Content -LiteralPath "ef8b31ad-0d7b-4d69-89f7-c49fae785351.txt" -Raw).Trim()
$hostName = "addinfobrasil-lab.github.io"

$urls = @(
  "https://$hostName/addinfobrasil-site/",
  "https://$hostName/addinfobrasil-site/produtos.html",
  "https://$hostName/addinfobrasil-site/blog.html"
)

$payload = @{
  host = $hostName
  key  = $key
  keyLocation = "https://$hostName/addinfobrasil-site/$key.txt"
  urlList = $urls
} | ConvertTo-Json -Depth 3

Write-Host "Enviando $($urls.Count) URLs para IndexNow..."
try {
  $resp = Invoke-RestMethod -Uri "https://api.indexnow.org/indexnow" -Method Post -ContentType "application/json; charset=utf-8" -Body $payload
  Write-Host "Resposta: $($resp | ConvertTo-Json)"
} catch {
  Write-Host "Falha na submissao: $($_.Exception.Message)"
  if ($_.Exception.Response) {
    $reader = New-Object System.IO.StreamReader($_.Exception.Response.GetResponseStream())
    Write-Host "Status HTTP: $([int]$_.Exception.Response.StatusCode)"
  }
}