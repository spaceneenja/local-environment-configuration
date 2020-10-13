# Verify that PowerShell is running as Administrator
If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole(`
    [Security.Principal.WindowsBuiltInRole] "Administrator"))
{
    Write-Warning "You do not have Administrator rights to run this script!`nPlease re-run this script as an Administrator!"
    Break
}

# Always installs
winget install -e Git.Git
winget install -e Microsoft.VisualStudioCode
winget install -e GitHub.GitHubDesktop
winget install -e 7zip.7zip
winget install -e Google.Chrome
