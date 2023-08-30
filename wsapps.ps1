# Instalação do Notepad++
$notepadPlusPlusInstaller = "https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.1.4/npp.8.1.4.Installer.x64.exe"
Invoke-WebRequest -Uri $notepadPlusPlusInstaller -OutFile "$env:TEMP\nppInstaller.exe"
Start-Process -FilePath "$env:TEMP\nppInstaller.exe" -ArgumentList "/S" -Wait

# Instalação do 7-Zip
$7ZipInstaller = "https://www.7-zip.org/a/7z2104-x64.exe"
Invoke-WebRequest -Uri $7ZipInstaller -OutFile "$env:TEMP\7ZipInstaller.exe"
Start-Process -FilePath "$env:TEMP\7ZipInstaller.exe" -ArgumentList "/S" -Wait

# Instalação do Discord
$discordInstaller = "https://discord.com/api/download?platform=win"
Invoke-WebRequest -Uri $discordInstaller -OutFile "$env:TEMP\discordSetup.exe"
Start-Process -FilePath "$env:TEMP\discordSetup.exe" -ArgumentList "/S" -Wait

# Instalação do Wazuh Client
$wazuhClientInstaller = "https://packages.wazuh.com/4.x/windows/wazuh-agent-4.5.1-1.msi"
Invoke-WebRequest -Uri $wazuhClientInstaller -OutFile "$env:TEMP\wazuhClientSetup.msi"
Start-Process -FilePath "msiexec.exe" -ArgumentList "/i $env:TEMP\wazuhClientSetup.msi /qn WAZUH_MANAGER=\"10.0.0.2\"" -Wait

# Instalação do Windows Terminal
Add-AppxPackage Microsoft.WindowsTerminal_1.11.2382.0_x64.appxbundle

# Instalação do BitDefender
$bitdefenderInstaller = "https://download.bitdefender.com/windows/desktop/connect/cl/21_0_24_75/bitdefender_windows.exe"
Invoke-WebRequest -Uri $bitdefenderInstaller -OutFile "$env:TEMP\bitdefenderSetup.exe"
Start-Process -FilePath "$env:TEMP\bitdefenderSetup.exe" -ArgumentList "/silent /install" -Wait

# Instalação do DbViewer
$dbViewerInstaller = "https://dbeaver.io/files/dbeaver-ce-latest-x86_64-setup.exe"
Invoke-WebRequest -Uri $dbViewerInstaller -OutFile "$env:TEMP\dbViewerSetup.exe"
Start-Process -FilePath "$env:TEMP\dbViewerSetup.exe" -ArgumentList "/S" -Wait
