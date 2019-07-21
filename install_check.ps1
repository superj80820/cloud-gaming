$file = "C:\done"
if (Test-Path -path $file)
{
    # Install pass
}
else
{
    # Install Chocolatey
    Write-Output "Install chocolatey ..."
    Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
    Write-Output "Done"

    # Download repository
    Write-Output "Download repository ..."
    $url = "https://github.com/superj80820/cloud-gaming/archive/master.zip"
    $output = "C:\master.zip"
    $start_time = Get-Date
    (New-Object System.Net.WebClient).DownloadFile($url, $output)
    Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"

    # Unzip repository
    Add-Type -AssemblyName System.IO.Compression.FileSystem
    function Unzip
    {
        param([string]$zipfile, [string]$outpath)

        [System.IO.Compression.ZipFile]::ExtractToDirectory($zipfile, $outpath)
    }

    Unzip "C:\master.zip" "C:\"
    Rename-Item C:\cloud-gaming-master cloud-gaming
}