$PS_PROFILE = "https://raw.githubusercontent.com/Alopezfu/ps_config_with_oh-my-posh/main/profile.ps1"

Write-Host '
  ____            _   _       ____        _           _____          _             
 |  _ \ ___  _ __| |_(_) __ _| __ )  ___ | |_ ___    |_   _|__   ___| |_ ___  _ __ 
 | |_) / _ \| '__| __| |/ _` |  _ \ / _ \| __/ _ \_____| |/ _ \ / __| __/ _ \| '__|
 |  __/ (_) | |  | |_| | (_| | |_) | (_) | ||  __/_____| | (_) | (__| || (_) | |   
 |_|   \___/|_|   \__|_|\__, |____/ \___/ \__\___|     |_|\___/ \___|\__\___/|_|   
                         |___/                                                      
' -ForegroundColor Yellow

Write-Host "Copy Powershell profile"
(Invoke-WebRequest $PS_PROFILE).Content > $PROFILE

Write-Host "Install oh-my-posh"
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://ohmyposh.dev/install.ps1'))

Write-Host "Install terminal-Icons module"
Import-Module terminal-Icons

Write-Host "Install posh-git module"
Install-Module posh-git -Force