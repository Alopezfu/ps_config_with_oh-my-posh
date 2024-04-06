$BANNER = @"
 
  ██████╗ ███████╗     ██████╗ ██████╗ ███╗   ██╗███████╗██╗ ██████╗ 
  ██╔══██╗██╔════╝    ██╔════╝██╔═══██╗████╗  ██║██╔════╝██║██╔════╝ 
  ██████╔╝███████╗    ██║     ██║   ██║██╔██╗ ██║█████╗  ██║██║  ███╗
  ██╔═══╝ ╚════██║    ██║     ██║   ██║██║╚██╗██║██╔══╝  ██║██║   ██║
  ██║     ███████║    ╚██████╗╚██████╔╝██║ ╚████║██║     ██║╚██████╔╝
  ╚═╝     ╚══════╝     ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝     ╚═╝ ╚═════╝ 
  
          by github.com/Alopezfu/
 
"@

$FONT="JetBrainsMono Nerd Font"

function Write($message){

  Write-Host 
}

Clear
Write-Host -ForegroundColor Yellow $BANNER
Sleep 3

Write-Host -NoNewline -ForegroundColor Blue "[!] Copy Powershell profile"
Get-Content .\profile.ps1 > $PROFILE
($?) ? (Write-Host -ForegroundColor Green " [OK]") : (Write-Host -ForegroundColor Red " [KO]")
Sleep 2

Write-Host -ForegroundColor Blue "[!] Install oh-my-posh"
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://ohmyposh.dev/install.ps1'))
($?) ? (Write-Host -ForegroundColor Green " [OK]") : (Write-Host -ForegroundColor Red " [KO]")
Sleep 2

Write-Host -NoNewline -ForegroundColor Blue "[!] Install JetBrainsMono Nerd font"
oh-my-posh.exe font install JetBrainsMono --user
($?) ? (Write-Host -ForegroundColor Green " [OK]") : (Write-Host -ForegroundColor Red " [KO]")
Sleep 2

$jsonContent = Get-Content -Path "$(Get-ChildItem $HOME\AppData\Local\Packages\ | Select-String WindowsTerminal)\LocalState\settings.json"
$newJsonContent = $jsonContent.Replace('"defaults": {},', '"defaults": { "font": {"face": "' + $FONT + '"} },')
$newJsonContent | Set-Content -Path "$(Get-ChildItem $HOME\AppData\Local\Packages\ | Select-String WindowsTerminal)\LocalState\settings.json"
($?) ? (Write-Host -ForegroundColor Green " [OK]") : (Write-Host -ForegroundColor Red " [KO]")
Sleep 2

Write-Host -NoNewline -ForegroundColor Blue "[!] Install git with winget"
winget install --id Git.Git -e --source winget
($?) ? (Write-Host -ForegroundColor Green " [OK]") : (Write-Host -ForegroundColor Red " [KO]")
Sleep 2

Write-Host -NoNewline -ForegroundColor Blue "[!] Install terminal-Icons module"
Import-Module terminal-Icons
($?) ? (Write-Host -ForegroundColor Green " [OK]") : (Write-Host -ForegroundColor Red " [KO]")
Sleep 2

Write-Host -NoNewline -ForegroundColor Blue "[!] Install posh-git module"
Install-Module posh-git -Force
($?) ? (Write-Host -ForegroundColor Green " [OK]") : (Write-Host -ForegroundColor Red " [KO]")
Sleep 2