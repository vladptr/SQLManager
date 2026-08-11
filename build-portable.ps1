$ErrorActionPreference = "Stop"

$projectRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$indexPath = Join-Path $projectRoot "index.html"
$outputPath = Join-Path $projectRoot "SQLManager-portable.html"

$html = [IO.File]::ReadAllText($indexPath, [Text.Encoding]::UTF8)
$css = [IO.File]::ReadAllText((Join-Path $projectRoot "css\styles.css"), [Text.Encoding]::UTF8)
$html = $html.Replace('<link rel="stylesheet" href="css/styles.css" />', "<style>`n$css`n</style>")

$scripts = @("data\schema.js", "js\sql-builder.js", "js\template-utils.js", "js\app.js")
foreach ($relativePath in $scripts) {
  $source = [IO.File]::ReadAllText((Join-Path $projectRoot $relativePath), [Text.Encoding]::UTF8)
  $htmlPath = $relativePath.Replace("\", "/")
  $html = $html.Replace("<script src=`"$htmlPath`"></script>", "<script>`n$source`n</script>")
}

if ($html -match '<script src=' -or $html -match '<link rel="stylesheet"') {
  throw "Не всі зовнішні ресурси вдалося вбудувати у переносний HTML."
}

[IO.File]::WriteAllText($outputPath, $html, [Text.UTF8Encoding]::new($false))
Write-Host "Створено: $outputPath"
