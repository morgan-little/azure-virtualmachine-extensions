#####
# Author: Morgan Little <Morgan.Little@cra-arc.gc.ca>
#
#####
# Download Chocolatey which allows us to use the package manager features it provides. Makes installed docker and chrome silently easier
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install Docker silently
choco install -y docker-for-windows --no-progress --fail-on-standard-error
# Install Chrome silently
choco install -y googlechrome --no-progress --fail-on-standard-error

# Enable Hyper-V and Containers features so docker and be used
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName Containers -All -NoRestart

# Add local users to the docker-users group so docker can be used by local accounts easier.
Get-LocalUser | Add-LocalGroupMember -Group "docker-users"
