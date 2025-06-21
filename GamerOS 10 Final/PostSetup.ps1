# Created by Txmmy
# GamerOS Optimize (WIP)
# Use Example:
# Enabled Tweak "Function", 
# Disabled Tweak #"Function",

$tweaks = @(
### Require Administrator ###
"RequireAdmin",
"CustomWindow",
"GamerOSLogo"

### Post Setup ###
"MinimalProcesses",

### Power Plan ###
"SystemPowerPlan",
"ScreenTimeout",

### Debloat OS ###
"RemoveWindowsApps",

### UI Settings ###
"SetAppsDarkMode",
"SetSystemDarkMode",
"SetExplorerThisPC",

### Services ###
#"DisableServices",

### SFC Scannow Run ###
#"RunSFCScannow",

### Auxiliary Functions ###
"WaitForKey",
"Restart"
)

##########
# Require Administrator
##########

# Relaunch the Script with Administrator Privileges.
Function RequireAdmin {
If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]"Administrator")) {
Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`" $PSCommandArgs" -WorkingDirectory $pwd -Verb RunAs
Exit
cls
}
}

# Launch the Script with A Custom Windows Size.
Function CustomWindow {
powershell -command "[console]::windowwidth=75; [console]::windowheight=23; [console]::bufferwidth=[console]::windowwidth"
}

# GamerOS Logo Display
Function GamerOSLogo{
Write-Host "                                                                           " -ForegroundColor DarkCyan -BackgroundColor Black
Write-Host "                                                                           " -ForegroundColor DarkCyan -BackgroundColor Black
Write-Host "                                                                           " -ForegroundColor DarkCyan -BackgroundColor Black
Write-Host "      ██████╗  █████╗ ███╗   ███╗███████╗██████╗  ██████╗ ███████╗         " -ForegroundColor DarkCyan -BackgroundColor Black
Write-Host "     ██╔════╝ ██╔══██╗████╗ ████║██╔════╝██╔══██╗██╔═══██╗██╔════╝         " -ForegroundColor DarkCyan -BackgroundColor Black
Write-Host "     ██║  ███╗███████║██╔████╔██║█████╗  ██████╔╝██║   ██║███████╗         " -ForegroundColor DarkCyan -BackgroundColor Black
Write-Host "     ██║   ██║██╔══██║██║╚██╔╝██║██╔══╝  ██╔══██╗██║   ██║╚════██║         " -ForegroundColor DarkCyan -BackgroundColor Black
Write-Host "     ╚██████╔╝██║  ██║██║ ╚═╝ ██║███████╗██║  ██║╚██████╔╝███████║         " -ForegroundColor DarkCyan -BackgroundColor Black
Write-Host "      ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝         " -ForegroundColor DarkCyan -BackgroundColor Black
Write-Host "██████╗  █████╗  ██████╗████████╗ ██████╗███████╗████████╗██╗   ██╗██████╗ " -ForegroundColor DarkCyan -BackgroundColor Black
Write-Host "██╔══██╗██╔══██╗██╔════╝╚══██╔══╝██╔════╝██╔════╝╚══██╔══╝██║   ██║██╔══██╗" -ForegroundColor DarkCyan -BackgroundColor Black
Write-Host "██████╔╝██║  ██║╚█████╗    ██║   ╚█████╗ █████╗     ██║   ██║   ██║██████╔╝" -ForegroundColor DarkCyan -BackgroundColor Black
Write-Host "██╔═══╝ ██║  ██║ ╚═══██╗   ██║    ╚═══██╗██╔══╝     ██║   ██║   ██║██╔═══╝ " -ForegroundColor DarkCyan -BackgroundColor Black
Write-Host "██║     ╚█████╔╝██████╔╝   ██║   ██████╔╝███████╗   ██║   ╚██████╔╝██║     " -ForegroundColor DarkCyan -BackgroundColor Black
Write-Host "╚═╝      ╚════╝ ╚═════╝    ╚═╝   ╚═════╝ ╚══════╝   ╚═╝    ╚═════╝ ╚═╝     " -ForegroundColor DarkCyan -BackgroundColor Black
Write-Host "                                                                           " -ForegroundColor DarkCyan -BackgroundColor Black
Write-Host "                                                                           " -ForegroundColor DarkCyan -BackgroundColor Black
Write-Host "                                                                           " -ForegroundColor DarkCyan -BackgroundColor Black
Write-Host "Do Not Close Window - Please Be Patient!!!                                 " -ForegroundColor DarkRed -BackgroundColor Black
Write-Host "Currently Running Configuration Script!!!                                  " -ForegroundColor DarkCyan -BackgroundColor Black
}

##########
# Post Setup
##########

# Tells Windows to Stop Splitting Background Services (Requires Restart)
Function MinimalProcesses {
Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control' -Name 'SvcHostSplitThresholdInKB' -Type DWord -Value 67108864
}

##########
# Power Plan
##########

# Setting High Performance Power Plan
Function SystemPowerPlan {
powercfg -setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c | Out-Null
}

# Disable Display and Sleep Modes
Function ScreenTimeout {
powercfg /X monitor-timeout-ac 0 | Out-Null
powercfg /X monitor-timeout-dc 0 | Out-Null
powercfg /X standby-timeout-ac 0 | Out-Null
powercfg /X standby-timeout-dc 0 | Out-Null
}

##########
# Debloat OS
##########

Function RemoveWindowsApps {
$WindowsApps = @(

#Unnecessary Windows 10 Apps
"Microsoft.549981C3F5F10" # 'Cortana'
"Microsoft.BingWeather" # 'MSN Weather'
"Microsoft.GetHelp" # 'Get Help'
"Microsoft.Getstarted" # 'Tips (Get Started)'
"Microsoft.Microsoft3DViewer" # '3D Viewer'
"Microsoft.MicrosoftOfficeHub" # 'Office'
"Microsoft.MicrosoftSolitaireCollection" # 'Microsoft Solitaire Collection'
"Microsoft.MicrosoftStickyNotes" # 'Microsoft Sticky Notes'
"Microsoft.MixedReality.Portal" # 'Mixed Reality Portal'
"Microsoft.MSPaint" # 'Paint 3D'
"Microsoft.Office.OneNote" # 'OneNote'
"Microsoft.People" # 'Microsoft People'
"Microsoft.ScreenSketch" # 'Snip & Sketch'
"Microsoft.SkypeApp" #'Skype'
"Microsoft.StorePurchaseApp" # 'Store Experience Host'
"Microsoft.Wallet" # 'Wallet Service'
"Microsoft.WebMediaExtensions" # 'Web Media Extensions'
"Microsoft.Windows.Photos" # 'Microsoft Photos'
"Microsoft.WindowsAlarms" # 'Windows Alarms & Clock'
"Microsoft.WindowsCalculator" # 'Windows Calculator'
"Microsoft.WindowsCamera" # 'Windows Camera'
"microsoft.windowscommunicationsapps" # 'Windows Mail'
"Microsoft.WindowsFeedbackHub" # 'Feedback Hub'
"Microsoft.WindowsMaps" # 'Windows Maps'
"Microsoft.WindowsSoundRecorder" # 'Windows Voice Recorder'
"Microsoft.YourPhone" # 'Your Phone'
"Microsoft.ZuneMusic" # 'Groove Music'
"Microsoft.ZuneVideo" # 'Movies & TV'
)
foreach ($App in $WindowsApps) {
$errpref = $ErrorActionPreference #save actual preference
$ErrorActionPreference = "silentlycontinue"
Get-AppxPackage -Name $App| Remove-AppxPackage -ErrorAction SilentlyContinue | Out-Null
Get-AppxProvisionedPackage -Online | Where-Object DisplayName -like $App | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue | Out-Null
$ErrorActionPreference = $errpref #restore previous preference
    }
}

##########
# UI Settings
##########

# Set Dark Mode for Applications
Function SetAppsDarkMode {
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "AppsUseLightTheme" -Type DWord -Value 0
}

# Set Dark Mode for System - Applicable Since 1903
Function SetSystemDarkMode {
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "SystemUsesLightTheme" -Type DWord -Value 0
}

# Change Default Explorer View to This PC
Function SetExplorerThisPC {
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "LaunchTo" -Type DWord -Value 1
}

##########
# Services
##########

# Disabling Un Nessessary Services (Requires Restart)
Function DisableServices {
$errpref = $ErrorActionPreference #save actual preference
$ErrorActionPreference = "silentlycontinue"
Stop-Service "" -WarningAction SilentlyContinue
Set-Service "" -StartupType Disabled

$ErrorActionPreference = $errpref #restore previous preference
}

##########
# SFC Scannow
##########

# Run SFC Scannow for Repair 
Function RunSFCScannow {
sfc /scannow
}

##########
# Auxiliary Functions
##########

# Wait for Key Press
Function WaitForKey {
Write-Host "All Done! You Can Now Restart Your PC!!!                                   " -ForegroundColor Green -BackgroundColor Black
Write-Host "Press Any Key to Continue...                                               " -ForegroundColor White -BackgroundColor Black
[Console]::ReadKey($true) | Out-Null
}

# Restart Computer
Function Restart {
Write-Host "Glitch...REBOOT                                                            " -ForegroundColor Cyan
Restart-Computer
}

##########
# Parse Parameters and Apply Tweaks
##########

# Call the Desired Tweak Functions
$tweaks | ForEach { Invoke-Expression $_ }