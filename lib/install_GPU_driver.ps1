# Download GPU driver
Write-Output "Install GPU driver ..."
$url = "https://storage.googleapis.com/nvidia-drivers-us-public/GRID/GRID7.1/412.16_grid_win10_server2016_64bit_international.exe"
$output = "C:\driver.exe"
$start_time = Get-Date
(New-Object System.Net.WebClient).DownloadFile($url, $output)
Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"

# Install GPU driver
Start-Process -Wait -FilePath "C:\driver.exe" -ArgumentList '-s','-noreboot','-clean' -passthru
Write-Output "Done"