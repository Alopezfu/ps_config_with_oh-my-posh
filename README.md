# Oh-my-posh
## Install
```ps1
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://ohmyposh.dev/install.ps1'))

$env:Path += ";$HOME\AppData\Local\Programs\oh-my-posh\bin"
```

## Install font
```ps1
oh-my-posh font install JetBrainsMono
```

## Install modules
```ps1
Install-Module Terminal-Icons
Install-Module posh-git
```

## Config autostart oh-my-posh
```ps1
Set-ExecutionPolicy -ExecutionPolicy Unrestricted
Unblock-File $PROFILE
New-Item -Path $PROFILE -Type File -Force
cp .\Microsoft.PowerShell_profile.ps1 $PROFILE
```

# Windows Terminal
```JSON
"defaults": {
    "colorScheme": "Alejandro scheme",
    "font": 
    {
        "face": "JetBrainsMonoNL Nerd Font"
    },
    "opacity": 85
}
...
"schemes": [
    {
        "background": "#262335",
        "black": "#0C0C0C",
        "blue": "#179fff",
        "brightBlack": "#767676",
        "brightBlue": "#3B78FF",
        "brightCyan": "#3B78FF",
        "brightGreen": "#72f1b8",
        "brightPurple": "#B4009E",
        "brightRed": "#E74856",
        "brightWhite": "#F2F2F2",
        "brightYellow": "#F9F1A5",
        "cursorColor": "#FFFFFF",
        "cyan": "#3A96DD",
        "foreground": "#CCCCCC",
        "green": "#13A10E",
        "name": "Alejandro scheme",
        "purple": "#881798",
        "red": "#C50F1F",
        "selectionBackground": "#6a517c",
        "white": "#CCCCCC",
        "yellow": "#C19C00"
        }
]
```
