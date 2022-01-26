# Verify that PowerShell is running as Administrator
If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole(`
    [Security.Principal.WindowsBuiltInRole] "Administrator"))
{
    Write-Warning "You do not have Administrator rights to run this script!`nPlease re-run this script as an Administrator!"
    Break
}

winget install -e Intel.ExtremeTuningUtility
winget install -e TechPowerUp.GPU-Z
winget install -e CPUID.CPU-Z
