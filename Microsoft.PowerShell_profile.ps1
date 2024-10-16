# Vars
$theme = "catppuccin_mocha"
$start_path = "$HOME/Desktop"

# Start oh-my-posh
& ([ScriptBlock]::Create((oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\$theme.omp.json" --print) -join "`n"))

# Import modules
Import-Module Terminal-Icons
Import-Module posh-git

# Post config
cd $start_path
Clear
