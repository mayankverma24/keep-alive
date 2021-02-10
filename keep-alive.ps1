clear host
#
# Script to keep the PC alive, will prevent screen lock and sleep.
# Works by pressing ESC key every 3 minutes
# How to: Create a new folder named as keep-alive on Desktop or any other directory and keep both the files in that folder

$opt = (Get-Host).PrivateData
$opt.WarningBackgroundColor = "DarkCyan"
$opt.WarningForegroundColor = "white"

write-warning "Your PC will not go to sleep whilst this window is open..."
Do {
[void][System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
[System.Windows.Forms.SendKeys]::SendWait("{ESC}")

Start-Sleep -Seconds 180

} While ($true)