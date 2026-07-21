param([string]$Target = ".")
$Source = Split-Path -Parent $MyInvocation.MyCommand.Path

New-Item -ItemType Directory -Force -Path `
  "$Target\_data", `
  "$Target\_pages", `
  "$Target\_includes", `
  "$Target\_publications", `
  "$Target\_teaching", `
  "$Target\_sass\theme", `
  "$Target\assets\css" | Out-Null

Copy-Item "$Source\_config.yml" "$Target\_config.yml" -Force
Copy-Item "$Source\_data\navigation.yml" "$Target\_data\navigation.yml" -Force
Copy-Item "$Source\_includes\research-single.html" "$Target\_includes\research-single.html" -Force
Copy-Item "$Source\_pages\about.md" "$Target\_pages\about.md" -Force
Remove-Item "$Target\_pages\research.md" -Force -ErrorAction SilentlyContinue
Copy-Item "$Source\_pages\research.html" "$Target\_pages\research.html" -Force
Copy-Item "$Source\_pages\publications.html" "$Target\_pages\publications.html" -Force
Copy-Item "$Source\_pages\teaching.html" "$Target\_pages\teaching.html" -Force
Copy-Item "$Source\_pages\cv.md" "$Target\_pages\cv.md" -Force

Get-Content "$Source\DELETE_THESE_SAMPLE_FILES.txt" | ForEach-Object {
    if ($_.Trim()) { Remove-Item "$Target\$_" -Force -ErrorAction SilentlyContinue }
}

Copy-Item "$Source\_publications\*.md" "$Target\_publications\" -Force
Copy-Item "$Source\_teaching\*.md" "$Target\_teaching\" -Force
Copy-Item "$Source\_sass\theme\_emoto_light.scss" "$Target\_sass\theme\_emoto_light.scss" -Force
Copy-Item "$Source\_sass\theme\_emoto_dark.scss" "$Target\_sass\theme\_emoto_dark.scss" -Force
Copy-Item "$Source\assets\css\main.scss" "$Target\assets\css\main.scss" -Force

@(
  "$Target\_sass\theme\_navy_light.scss",
  "$Target\_sass\theme\_navy_dark.scss",
  "$Target\_sass\theme\_black_light.scss",
  "$Target\_sass\theme\_black_dark.scss",
  "$Target\_sass\theme\_brabham_light.scss",
  "$Target\_sass\theme\_brabham_dark.scss"
) | ForEach-Object { Remove-Item $_ -Force -ErrorAction SilentlyContinue }

Write-Host "Academic Pages content and Black Primary / Deep Blue theme applied to $Target"
