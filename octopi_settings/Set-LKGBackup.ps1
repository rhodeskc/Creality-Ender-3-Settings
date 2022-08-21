Push-Location D:\git\Creality-Ender-3-Settings\octopi_settings
$LatestBackup = gci *octoprint-backup* | Sort-Object -Property LastWriteTime -Descending | Select-Object -First 1
$LKG = ".\octoprint-backup-latest.zip"
Move-Item $LKG "$($LKG)_old" -Force
Copy-Item $LatestBackup $LKG -Force
Pop-Location
