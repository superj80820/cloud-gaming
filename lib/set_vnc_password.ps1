& "C:\Program Files\TightVNC\tvnserver.exe" -configservice
Write-Output 'Please click "Set..." to set password under "Primary password".';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');