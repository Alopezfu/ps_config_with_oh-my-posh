$PS_PROFILE = "https://raw.githubusercontent.com/Alopezfu/ps_config_with_oh-my-posh/main/profile.ps1"

Write-Host ''                                                  ,d8888b  d8,                               d8,         d8b                   d8b                                                                 d8b      
                                                  88P'    `8P                               `8P    d8P   ?88                   ?88                                                                 ?88      
                                               d888888P                                         d888888P  88b                   88b                                                                 88b     
?88,.d88b, .d888b,     d8888b d8888b   88bd88b   ?88'      88b d888b8b       ?88   d8P  d8P  88b  ?88'    888888b      d8888b   888888b       88bd8b,d88b ?88   d8P     ?88,.d88b, d8888b  .d888b,  888888b 
`?88'  ?88 ?8b,       d8P' `Pd8P' ?88  88P' ?8b  88P       88Pd8P' ?88       d88  d8P' d8P'  88P  88P     88P `?8b    d8P' ?88  88P `?8b      88P'`?8P'?8bd88   88      `?88'  ?88d8P' ?88 ?8b,     88P `?8b
  88b  d8P   `?8b     88b    88b  d88 d88   88P d88       d88 88b  ,88b      ?8b ,88b ,88'  d88   88b    d88   88P    88b  d88 d88   88P     d88  d88  88P?8(  d88        88b  d8P88b  d88   `?8b  d88   88P
  888888P'`?888P'     `?888P'`?8888P'd88'   88bd88'      d88' `?88P'`88b     `?888P'888P'  d88'   `?8b  d88'   88b    `?8888P'd88'   88b    d88' d88'  88b`?88P'?8b       888888P'`?8888P'`?888P' d88'   88b
  88P'                                                               )88                                                                                         )88      88P'                              
 d88                                                                ,88P                                                                                        ,d8P     d88                                
 ?8P                                                            `?8888P                                                                                      `?888P'     ?8P                                
''
Write-Host "Copy Powershell profile"
(Invoke-WebRequest $PS_PROFILE).Content > $PROFILE

Write-Host "Install oh-my-posh"
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://ohmyposh.dev/install.ps1'))

Write-Host "Install terminal-Icons module"
Import-Module terminal-Icons

Write-Host "Install posh-git module"
Install-Module posh-git -Force