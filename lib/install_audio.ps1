# Download audio driver
Write-Output "Install audio driver ..."
$url = "http://vincent.burel.free.fr/VirtualAudioApps/VBCABLE_Driver_Pack43.zip"
$output = "C:\VBCABLE_Driver_Pack43.zip"
$start_time = Get-Date
(New-Object System.Net.WebClient).DownloadFile($url, $output)
Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"

# Unzip audio driver
Add-Type -AssemblyName System.IO.Compression.FileSystem
function Unzip
{
    param([string]$zipfile, [string]$outpath)

    [System.IO.Compression.ZipFile]::ExtractToDirectory($zipfile, $outpath)
}

Unzip "C:\VBCABLE_Driver_Pack43.zip" "C:\audio_driver"
Start-Process -Wait -FilePath "C:\audio_driver\VBCABLE_Setup_x64.exe" -ArgumentList '/S','/v','/qn' -passthru
Write-Output "Done"