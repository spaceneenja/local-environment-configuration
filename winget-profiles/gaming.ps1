# Verify that PowerShell is running as Administrator
If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole(`
    [Security.Principal.WindowsBuiltInRole] "Administrator"))
{
    Write-Warning "You do not have Administrator rights to run this script!`nPlease re-run this script as an Administrator!"
    Break
}
 
# Gaming installs
winget install -e Discord.Discord
winget install -e Valve.Steam
winget install -e Lexikos.AutoHotkey
winget install -e twitch.twitch
winget install -e OBSProject.OBSStudio
