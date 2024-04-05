$PS_PROFILE = "https://raw.githubusercontent.com/devblackops/Terminal-Icons/main/psakeFile.ps1"

Write-Host "Copy Powershell profile"
(Invoke-WebRequest $PS_PROFILE).Content > $PROFILE

Write-Host "Install oh-my-posh"
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://ohmyposh.dev/install.ps1'))

Write-Host "Install terminal-Icons module"
Import-Module terminal-Icons

Write-Host "Install posh-git module"
Install-Module posh-git -Force


