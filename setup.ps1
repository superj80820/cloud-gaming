Invoke-Expression "C:\cloud-gaming\lib\install_by_chocolatey.ps1"
Invoke-Expression "C:\cloud-gaming\lib\install_parsec.ps1"
Invoke-Expression "C:\cloud-gaming\lib\install_GPU_driver.ps1"
Invoke-Expression "C:\cloud-gaming\lib\install_audio.ps1"
Invoke-Expression "C:\cloud-gaming\lib\disable_login.ps1"
Invoke-Expression "C:\cloud-gaming\lib\set_vnc_password.ps1"
echo $null >> C:\done
Write-Output  'Well done. Please reboot computer';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');