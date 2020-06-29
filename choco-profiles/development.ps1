# Verify that PowerShell is running as Administrator
If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole(`
    [Security.Principal.WindowsBuiltInRole] "Administrator"))
{
    Write-Warning "You do not have Administrator rights to run this script!`nPlease re-run this script as an Administrator!"
    Break
}

choco upgrade chocolatey
choco feature enable -n allowGlobalConfirmation


## Dev Ops
choco install Microsoft-Hyper-V-All -source windowsFeatures
# choco install bitvise-ssh-client
# choco install poshgit
# choco install git-credential-winstore
choco install gow
choco install awscli
choco install vagrant
choco install virtualbox
choco install packer
choco install docker
choco install kubernetes-cli

## Node, npm
choco install nodejs.install
npm install -g npm-windows-upgrade

## Python
choco install python
choco install pip
choco install easy.install
if (Test-PendingReboot) { Invoke-Reboot }
