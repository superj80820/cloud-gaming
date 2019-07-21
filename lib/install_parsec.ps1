# Download parsec
Write-Output "Install parsec ..."
$url = "https://s3.amazonaws.com/parsec-build/package/parsec-windows.exe"
$output = "C:\parsec.exe"
$start_time = Get-Date
(New-Object System.Net.WebClient).DownloadFile($url, $output)
Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"

# Install parsec
Start-Process -Wait -FilePath "C:\parsec.exe" -ArgumentList '/S','/v','/qn' -passthru
Write-Output "Done"