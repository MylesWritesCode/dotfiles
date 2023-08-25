# oh-my-posh init pwsh --config ~\windows-dotfiles\oh-my-posh\tomorrow-night-bright.json | Invoke-Expression

Invoke-Expression (&starship init powershell)
$ENV:STARSHIP_CONFIG = "$HOME/windows-dotfiles/starship/starship.toml"

# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
