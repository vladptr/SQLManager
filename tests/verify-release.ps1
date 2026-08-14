$ErrorActionPreference = "Stop"
$root = Resolve-Path (Join-Path $PSScriptRoot "..")
$index = [IO.File]::ReadAllText((Join-Path $root "index.html"), [Text.Encoding]::UTF8)
$app = [IO.File]::ReadAllText((Join-Path $root "js\app.js"), [Text.Encoding]::UTF8)
$expectedScripts = @(
  "data/physical-schema.generated.js", "data/schema.js", "data/catalog-ui.js",
  "js/sql-builder.js", "js/template-utils.js", "js/preset-store.js",
  "js/wizard-state.js", "js/app.js"
)
$actualScripts = [regex]::Matches($index, '<script\s+src="([^"]+)"') | ForEach-Object { $_.Groups[1].Value }
if (($actualScripts -join "|") -ne ($expectedScripts -join "|")) {
  throw "Incorrect runtime script order: $($actualScripts -join ', ')"
}
$usedIds = [regex]::Matches($app, '\$\(["'']#([A-Za-z0-9_-]+)["'']\)') |
  ForEach-Object { $_.Groups[1].Value } | Sort-Object -Unique
$missingIds = $usedIds | Where-Object { $index -notmatch ('id="' + [regex]::Escape($_) + '"') }
if ($missingIds) { throw "Missing DOM IDs: $($missingIds -join ', ')" }
$required = @("index.html", "README.md", "build-portable.ps1", "start.bat") +
  (4..7 | ForEach-Object { "rzo_schema_$_.sql" })
$missingFiles = $required | Where-Object { -not (Test-Path -LiteralPath (Join-Path $root $_)) }
if ($missingFiles) { throw "Missing release files: $($missingFiles -join ', ')" }
Write-Host "Release structure OK: $($actualScripts.Count) scripts, $($usedIds.Count) DOM IDs, $($required.Count) required files."
