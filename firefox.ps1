function installLatestFirefox {
  Write-Host "Download Firefox"
  $firefoxInstallerPath = [Environment]::GetFolderPath('Desktop')+"\firefoxInstaller.exe"
  $firefoxLink = "https://download.mozilla.org/?product=firefox-latest&os=win64&lang=en-US"
  (New-Object System.Net.WebClient).DownloadFile($firefoxLink, $firefoxInstallerPath)
  Write-Host "Install Firefox"
  Start-Process -Wait -FilePath $firefoxInstallerPath -ArgumentList "/S" -PassThru | Out-Null
  Remove-Item -Path $firefoxInstallerPath
  Write-Host "Firefox installed"
}
