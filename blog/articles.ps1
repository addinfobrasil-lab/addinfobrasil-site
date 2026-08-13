# Agrega as três partes dos dados dos artigos.
. (Join-Path $PSScriptRoot "articles-existing.ps1")
. (Join-Path $PSScriptRoot "articles-part1.ps1")
. (Join-Path $PSScriptRoot "articles-part2.ps1")
$articles = @($existing + $part1 + $part2)