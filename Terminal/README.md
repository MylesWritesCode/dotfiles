### Requirements
- Oh My Posh
- A nerd font

### Creating a hard link
**Windows & Powershell**
> Settings location formally documented here:
> https://docs.microsoft.com/en-us/windows/terminal/install#settings-json-file
```ps
New-item -ItemType SymbolicLink `
-Path $env:LOCALAPPDATA/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json `
-Target $env:USERPROFILE/Documents/windows-dotfiles/Terminal/settings.json `
```