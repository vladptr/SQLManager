$ErrorActionPreference = "Stop"
$root = Resolve-Path (Join-Path $PSScriptRoot "..")
$index = [IO.File]::ReadAllText((Join-Path $root "index.html"), [Text.Encoding]::UTF8)
$app = [IO.File]::ReadAllText((Join-Path $root "js\app.js"), [Text.Encoding]::UTF8)
$oracleExport = [IO.File]::ReadAllText((Join-Path $root "js\oracle-export.js"), [Text.Encoding]::UTF8)
$expectedScripts = @(
  "data/physical-schema.generated.js", "data/schema.js", "data/catalog-ui.js",
  "js/sql-builder.js", "js/template-utils.js", "js/preset-store.js",
  "js/wizard-state.js", "js/app.js", "js/oracle-export.js"
)
$actualScripts = [regex]::Matches($index, '<script\s+src="([^"]+)"') | ForEach-Object { $_.Groups[1].Value }
if (($actualScripts -join "|") -ne ($expectedScripts -join "|")) {
  throw "Incorrect runtime script order: $($actualScripts -join ', ')"
}
$usedIds = [regex]::Matches(($app + "`n" + $oracleExport), '(?:\$\(["'']#|byId\(["''])([A-Za-z0-9_-]+)["'']\)?') |
  ForEach-Object { $_.Groups[1].Value } | Sort-Object -Unique
$missingIds = $usedIds | Where-Object { $index -notmatch ('id="' + [regex]::Escape($_) + '"') }
if ($missingIds) { throw "Missing DOM IDs: $($missingIds -join ', ')" }
$required = @(
  "index.html", "README.md", "SQLManager-portable.html", "build-portable.ps1", "start.bat",
  "server\sqlmanager.ps1", "cred\auth3.example.json", "js\oracle-export.js", "tests\run-oracle-tests.ps1"
) +
  (4..7 | ForEach-Object { "rzo_schema_$_.sql" })
$missingFiles = $required | Where-Object { -not (Test-Path -LiteralPath (Join-Path $root $_)) }
if ($missingFiles) { throw "Missing release files: $($missingFiles -join ', ')" }
$expectedPortable = $index
$css = [IO.File]::ReadAllText((Join-Path $root "css\styles.css"), [Text.Encoding]::UTF8)
$expectedPortable = $expectedPortable.Replace('<link rel="stylesheet" href="css/styles.css" />', "<style>`n$css`n</style>")
foreach ($relativePath in $expectedScripts) {
  $source = [IO.File]::ReadAllText((Join-Path $root $relativePath.Replace("/", "\")), [Text.Encoding]::UTF8)
  $expectedPortable = $expectedPortable.Replace("<script src=`"$relativePath`"></script>", "<script>`n$source`n</script>")
}
$portablePath = Join-Path $root "SQLManager-portable.html"
$portable = [IO.File]::ReadAllText($portablePath, [Text.Encoding]::UTF8)
if ($portable -ne $expectedPortable) { throw "SQLManager-portable.html is stale; run build-portable.ps1." }
if ($portable -match '<script\s+src=' -or $portable -match '<link\s+rel="stylesheet"') {
  throw "Portable HTML still contains external runtime resources."
}
if ($portable -match 'OraOLEDB|db_credentials|server[/\\]sqlmanager\.ps1') {
  throw "Portable HTML contains server-only Oracle implementation details."
}
Write-Host "Release structure OK: $($actualScripts.Count) scripts, $($usedIds.Count) DOM IDs, $($required.Count) required files."
