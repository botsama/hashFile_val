# calc hash in sha256 for file in defined output location

$searchPath = 'C:\ScriptSearch\debug_War'
$outHashFileName = '.hash'
$buildSearch = Get-ChildItem $($searchPath) -Recurse -Force -Include *.war, *.ear, *.rar, *.zip, *.xml -ErrorAction SilentlyContinue
# Search defined path for packages and zip archives.

# for each search result, generate a flat-file with path and hash checksum to folder script ran from.
foreach ($file in $buildSearch) {
$outSearchDest = Split-Path $file
Get-FileHash -Algorithm SHA256 $($file) | Format-Table -Property hash | Out-file "$($outSearchDest)\$($file.name)$($outHashFileName)"
}
