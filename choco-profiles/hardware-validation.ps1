# Verify that PowerShell is running as Administrator
If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole(`
    [Security.Principal.WindowsBuiltInRole] "Administrator"))
{
    Write-Warning "You do not have Administrator rights to run this script!`nPlease re-run this script as an Administrator!"
    Break
}

choco upgrade chocolatey
choco feature enable -n allowGlobalConfirmation

# Hardware Validation
choco install openhardwaremonitor
choco install cpu-z
choco install gpu-z
choco install prime95
choco install aida64-extreme
choco install furmark
choco install intel-ipdt