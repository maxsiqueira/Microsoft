Set-ExecutionPolicy Bypass -Scope Process -Force
$env:chocolateyUseWindowsCompression = 'true'
(New-Object System.Net.WebClient).DownloadFile("https://www.7-zip.org/a/7z2201-x64.msi", "$env:userprofile\downloads\7z2107-x64.msi")
Start-Process msiexec.exe -Wait -ArgumentList "/I  $env:userprofile\7z2201-x64.msi /quiet"
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco install -y Notepad++ 7zip OpenVPN Chrome Discord 
CMD winget install -y Notepad++ 7zip OpenVPN Chrome Discord
#Até aqui deu certo!
