Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco install -y docker-for-windows --no-progress --fail-on-standard-error
choco install -y googlechrome --no-progress --fail-on-standard-error
