﻿#Requires -Version 5.1
#Requires -Modules Microsoft.PowerShell.Utility

$PackageList = ConvertFrom-Csv @'
    Identity, Family
    Clipchamp.Clipchamp, Clipchamp.Clipchamp_yxz26nhyzhsrt
    Microsoft.AV1VideoExtension, Microsoft.AV1VideoExtension_8wekyb3d8bbwe
    Microsoft.BingNews, Microsoft.BingNews_8wekyb3d8bbwe
    Microsoft.BingTranslator, Microsoft.BingTranslator_8wekyb3d8bbwe
    Microsoft.BingWeather, Microsoft.BingWeather_8wekyb3d8bbwe
    Microsoft.Copilot, Microsoft.Copilot_8wekyb3d8bbwe
    Microsoft.Cortana, Microsoft.549981C3F5F10_8wekyb3d8bbwe
    Microsoft.DesktopAppInstaller, Microsoft.DesktopAppInstaller_8wekyb3d8bbwe
    Microsoft.DiagnosticDataViewer, Microsoft.DiagnosticDataViewer_8wekyb3d8bbwe
    Microsoft.DirectXRuntime, Microsoft.DirectXRuntime_8wekyb3d8bbwe
    Microsoft.GamingApp, Microsoft.GamingApp_8wekyb3d8bbwe
    Microsoft.GamingServices, Microsoft.GamingServices_8wekyb3d8bbwe
    Microsoft.GetHelp, Microsoft.GetHelp_8wekyb3d8bbwe
    Microsoft.Getstarted, Microsoft.Getstarted_8wekyb3d8bbwe
    Microsoft.HEIFImageExtension, Microsoft.HEIFImageExtension_8wekyb3d8bbwe
    Microsoft.HEVCVideoExtension, Microsoft.HEVCVideoExtension_8wekyb3d8bbwe
    Microsoft.JPEG-XLImageExtension,Microsoft.JPEG-XLImageExtension_8wekyb3d8bbwe
    Microsoft.Microsoft3DViewer, Microsoft.Microsoft3DViewer_8wekyb3d8bbwe
    Microsoft.MicrosoftFamily, MicrosoftCorporationII.MicrosoftFamily_8wekyb3d8bbwe
    Microsoft.MicrosoftHoloLens, Microsoft.MicrosoftHoloLens_8wekyb3d8bbwe
    Microsoft.MicrosoftJournal, Microsoft.MicrosoftJournal_8wekyb3d8bbwe
    Microsoft.MicrosoftOfficeHub, Microsoft.MicrosoftOfficeHub_8wekyb3d8bbwe
    Microsoft.MicrosoftOneDrive, Microsoft.MicrosoftSkyDrive_8wekyb3d8bbwe
    Microsoft.MicrosoftPCManager, Microsoft.MicrosoftPCManager_8wekyb3d8bbwe
    Microsoft.MicrosoftSolitaireCollection, Microsoft.MicrosoftSolitaireCollection_8wekyb3d8bbwe
    Microsoft.MicrosoftStickyNotes, Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe
    Microsoft.MinecraftEducation, Microsoft.MinecraftEducationEdition_8wekyb3d8bbwe
    Microsoft.MixedReality.Portal, Microsoft.MixedReality.Portal_8wekyb3d8bbwe
    Microsoft.MPEG2VideoExtension, Microsoft.MPEG2VideoExtension_8wekyb3d8bbwe
    Microsoft.MSPaint, Microsoft.MSPaint_8wekyb3d8bbwe
    Microsoft.Office.Excel, Microsoft.Office.Excel_8wekyb3d8bbwe
    Microsoft.Office.OneNote, Microsoft.Office.OneNote_8wekyb3d8bbwe
    Microsoft.Office.PowerPoint, Microsoft.Office.PowerPoint_8wekyb3d8bbwe
    Microsoft.Office.Word, Microsoft.Office.Word_8wekyb3d8bbwe
    Microsoft.OutlookForWindows, Microsoft.OutlookForWindows_8wekyb3d8bbwe
    Microsoft.Paint, Microsoft.Paint_8wekyb3d8bbwe
    Microsoft.People, Microsoft.People_8wekyb3d8bbwe
    Microsoft.PhotosLegacy, Microsoft.PhotosLegacy_8wekyb3d8bbwe
    Microsoft.PowerAutomateDesktop, Microsoft.PowerAutomateDesktop_8wekyb3d8bbwe
    Microsoft.PowerShell, Microsoft.PowerShell_8wekyb3d8bbwe
    Microsoft.QuickAssist, MicrosoftCorporationII.QuickAssist_8wekyb3d8bbwe
    Microsoft.RawImageExtension, Microsoft.RawImageExtension_8wekyb3d8bbwe
    Microsoft.RemoteDesktop, Microsoft.RemoteDesktop_8wekyb3d8bbwe
    Microsoft.ScreenSketch, Microsoft.ScreenSketch_8wekyb3d8bbwe
    Microsoft.Services.Store.Engagement, Microsoft.Services.Store.Engagement_8wekyb3d8bbwe
    Microsoft.SkypeApp, Microsoft.SkypeApp_kzf8qxf38zg5c
    Microsoft.StorePurchaseApp, Microsoft.StorePurchaseApp_8wekyb3d8bbwe
    Microsoft.SysinternalsSuite, Microsoft.SysinternalsSuite_8wekyb3d8bbwe
    Microsoft.Todos, Microsoft.Todos_8wekyb3d8bbwe
    Microsoft.VP9VideoExtensions, Microsoft.VP9VideoExtensions_8wekyb3d8bbwe
    Microsoft.WebMediaExtensions, Microsoft.WebMediaExtensions_8wekyb3d8bbwe
    Microsoft.WebpImageExtension, Microsoft.WebpImageExtension_8wekyb3d8bbwe
    Microsoft.Whiteboard, Microsoft.Whiteboard_8wekyb3d8bbwe
    Microsoft.WinDbg, Microsoft.WinDbg_8wekyb3d8bbwe
    Microsoft.Windows365, MicrosoftCorporationII.Windows365_8wekyb3d8bbwe
    Microsoft.WindowsAlarms, Microsoft.WindowsAlarms_8wekyb3d8bbwe
    Microsoft.WindowsCalculator, Microsoft.WindowsCalculator_8wekyb3d8bbwe
    Microsoft.WindowsCamera, Microsoft.WindowsCamera_8wekyb3d8bbwe
    MicrosoftWindows.Client.WebExperience, MicrosoftWindows.Client.WebExperience_cw5n1h2txyewy
    Microsoft.WindowsCommunicationsApps, microsoft.windowscommunicationsapps_8wekyb3d8bbwe
    Microsoft.WindowsConfigurationDesigner, Microsoft.WindowsConfigurationDesigner_8wekyb3d8bbwe
    MicrosoftWindows.CrossDevice, MicrosoftWindows.CrossDevice_cw5n1h2txyewy
    Microsoft.WindowsDefenderApplicationGuard, Microsoft.WindowsDefenderApplicationGuard_8wekyb3d8bbwe
    Microsoft.Windows.DevHome, Microsoft.Windows.DevHome_8wekyb3d8bbwe
    Microsoft.WindowsFeedbackHub, Microsoft.WindowsFeedbackHub_8wekyb3d8bbwe
    Microsoft.WindowsHDRCalibration, MicrosoftCorporationII.WindowsHDRCalibration_8wekyb3d8bbwe
    Microsoft.WindowsMaps, Microsoft.WindowsMaps_8wekyb3d8bbwe
    Microsoft.WindowsNotepad, Microsoft.WindowsNotepad_8wekyb3d8bbwe
    Microsoft.Windows.Photos, Microsoft.Windows.Photos_8wekyb3d8bbwe
    Microsoft.WindowsScan, Microsoft.WindowsScan_8wekyb3d8bbwe
    Microsoft.WindowsSoundRecorder, Microsoft.WindowsSoundRecorder_8wekyb3d8bbwe
    Microsoft.WindowsStore, Microsoft.WindowsStore_8wekyb3d8bbwe
    Microsoft.WindowsSubsystemForAndroid, MicrosoftCorporationII.WindowsSubsystemForAndroid_8wekyb3d8bbwe
    Microsoft.WindowsSubsystemforLinux, MicrosoftCorporationII.WindowsSubsystemforLinux_8wekyb3d8bbwe
    Microsoft.WindowsTerminal, Microsoft.WindowsTerminal_8wekyb3d8bbwe
    Microsoft.XboxApp, Microsoft.XboxApp_8wekyb3d8bbwe
    Microsoft.XboxDevices, Microsoft.XboxDevices_8wekyb3d8bbwe
    Microsoft.XboxGameOverlay, Microsoft.XboxGameOverlay_8wekyb3d8bbwe
    Microsoft.XboxGamingOverlay, Microsoft.XboxGamingOverlay_8wekyb3d8bbwe
    Microsoft.XboxIdentityProvider, Microsoft.XboxIdentityProvider_8wekyb3d8bbwe
    Microsoft.XboxSpeechToTextOverlay, Microsoft.XboxSpeechToTextOverlay_8wekyb3d8bbwe
    Microsoft.Xbox.TCUI, Microsoft.Xbox.TCUI_8wekyb3d8bbwe
    Microsoft.YourPhone, Microsoft.YourPhone_8wekyb3d8bbwe
    Microsoft.ZuneMusic, Microsoft.ZuneMusic_8wekyb3d8bbwe
    Microsoft.ZuneVideo, Microsoft.ZuneVideo_8wekyb3d8bbwe
    Amazon.AmazonAppstore, Amazon.comServicesLLC.AmazonAppstore_bvztej1py64t8
    AMD.AMDRadeonSoftware, AdvancedMicroDevicesInc-2.AMDRadeonSoftware_0a9344xs7nr4m
    Canonical.Ubuntu, CanonicalGroupLimited.Ubuntu_79rhkp1fndgsc
    Canonical.Ubuntu18.04, CanonicalGroupLimited.Ubuntu18.04onWindows_79rhkp1fndgsc
    Canonical.Ubuntu20.04LTS, CanonicalGroupLimited.Ubuntu20.04LTS_79rhkp1fndgsc
    Canonical.Ubuntu22.04LTS, CanonicalGroupLimited.Ubuntu22.04LTS_79rhkp1fndgsc
    Debian.DebianGNULinux, TheDebianProject.DebianGNULinux_76v4gfsz19hv4
    Dolby.DolbyAC4DecoderOEM, DolbyLaboratories.DolbyAC4DecoderOEM_rz1tebttyb220
    Dolby.DolbyDigitalPlusDecoderOEM, DolbyLaboratories.DolbyDigitalPlusDecoderOEM_rz1tebttyb220
    Intel.IntelGraphicsExperience, AppUp.IntelGraphicsExperience_8j3eq9eme6ctt
    NVIDIA.NVIDIAControlPanel, NVIDIACorp.NVIDIAControlPanel_56jybvy8sckqj
    Netflix, 4DF9E0F8.Netflix_mcm4njqhnhss8
    AlexSSB.ADBExplorer, 57163AlexSSB.ADBExplorer_945x2b8a76bwt
'@

$DependencyList = [ordered]@{
    'Microsoft.Advertising.Xaml' = $null
    'Microsoft.NET.Native.Framework' = $null
    'Microsoft.NET.Native.Runtime' = $null
    'Microsoft.Services.Store.Engagement' = $null
    'Microsoft.UI.Xaml' = $null
    'UWPDesktop' = $null
    'Microsoft.VCLibs' = $null
    'Microsoft.WindowsAppRuntime' = $null
    'Microsoft.WinJS' = $null
}

$RingList = ConvertFrom-Csv @'
    Name, Value
    Fast, WIF
    Slow, WIS
    Preview, RP
    Retail, Retail
'@

############

$CurrentUser = New-Object Security.Principal.WindowsPrincipal ([Security.Principal.WindowsIdentity]::GetCurrent())
$Elevated = $CurrentUser.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)

$CheckListBox = {
    if (($Package_ListBox.SelectedIndex -gt -1 -or $ProductID_TextBox.Text -ne $null) -and $Arch_ListBox.SelectedIndex -gt -1 -and $Ring_ListBox.SelectedIndex -gt -1) {
        $OKButton.Enabled = $true
    }
}

[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

[System.Windows.Forms.Application]::EnableVisualStyles()

$objForm = New-Object System.Windows.Forms.Form
$objForm.Size = New-Object System.Drawing.Size(600,460)
$objForm.StartPosition = 'CenterScreen'
$objForm.MaximizeBox = $false
$objForm.Text = 'Microsoft Store Apps v1.7'

if ($PSVersionTable.PSVersion.Major -le 5) {
    $objForm.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon("$PSHOME\powershell.exe")
}
else {
    $objForm.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon("$PSHOME\pwsh.exe")
}

if (([System.Environment]::OSVersion.Version).Major -gt 6) {
    $FontSize = 12
}
else {
    $FontSize = 8
}

$Package_Label = New-Object System.Windows.Forms.Label
$Package_Label.Location = New-Object System.Drawing.Point(25,10)
$Package_Label.Size = New-Object System.Drawing.Size(365,20)
$Package_Label.Font = [System.Drawing.Font]::new($Package_Label.Font.Name, $FontSize, [System.Drawing.FontStyle]::Bold)
$Package_Label.Text = 'Package'

$objForm.Controls.Add($Package_Label)

$Package_ListBox = New-Object System.Windows.Forms.ListBox
$Package_ListBox.Location = New-Object System.Drawing.Point(25,35)
$Package_ListBox.Size = New-Object System.Drawing.Size(365,20)
$Package_ListBox.Height = 220
$Package_ListBox.Font = [System.Drawing.Font]::new($Package_ListBox.Font.Name, $FontSize)
$Package_ListBox.add_SelectedIndexChanged({$ProductID_TextBox.Clear(); $CheckListBox})

Foreach ($item in $PackageList.Identity) {
    [void]$Package_ListBox.Items.Add($item)
}
$objForm.Controls.Add($Package_ListBox)

$ProductID_Label = New-Object System.Windows.Forms.Label
$ProductID_Label.Location = New-Object System.Drawing.Point(25,255)
$ProductID_Label.Size = New-Object System.Drawing.Size(125,20)
$ProductID_Label.Font = [System.Drawing.Font]::new($ProductID_Label.Font.Name, $FontSize, [System.Drawing.FontStyle]::Bold)
$ProductID_Label.Text = 'App Product ID'

$objForm.Controls.Add($ProductID_Label)

$ProductID_TextBox = New-Object System.Windows.Forms.TextBox
$ProductID_TextBox.Location = New-Object System.Drawing.Point(160,251)
$ProductID_TextBox.Size = New-Object System.Drawing.Size(155,20)
$ProductID_TextBox.Font = [System.Drawing.Font]::new($ProductID_TextBox.Font.Name, $FontSize)
$ProductID_TextBox.Add_TextChanged({$Package_ListBox.ClearSelected()})

$objForm.Controls.Add($ProductID_TextBox)

$Arch_Label = New-Object System.Windows.Forms.Label
$Arch_Label.Location = New-Object System.Drawing.Point(410,10)
$Arch_Label.Size = New-Object System.Drawing.Size(65,20)
$Arch_Label.Font = [System.Drawing.Font]::new($Arch_Label.Font.Name, $FontSize, [System.Drawing.FontStyle]::Bold)
$Arch_Label.Text = 'Arch'

$objForm.Controls.Add($Arch_Label)

$Arch_ListBox = New-Object System.Windows.Forms.ListBox
$Arch_ListBox.Location = New-Object System.Drawing.Point(410,35)
$Arch_ListBox.Size = New-Object System.Drawing.Size(65,20)
$Arch_ListBox.Height = 90
$Arch_ListBox.Font = [System.Drawing.Font]::new($Arch_ListBox.Font.Name, $FontSize)
$Arch_ListBox.add_SelectedIndexChanged($CheckListBox)

[void]$Arch_ListBox.Items.AddRange(@('x64','x86','arm64','arm'))
$objForm.Controls.Add($Arch_ListBox)

$Ring_Label = New-Object System.Windows.Forms.Label
$Ring_Label.Location = New-Object System.Drawing.Point(495,10)
$Ring_Label.Size = New-Object System.Drawing.Size(70,20)
$Ring_Label.Font = [System.Drawing.Font]::new($Ring_Label.Font.Name, $FontSize, [System.Drawing.FontStyle]::Bold)
$Ring_Label.Text = 'Ring'

$objForm.Controls.Add($Ring_Label)

$Ring_ListBox = New-Object System.Windows.Forms.ListBox
$Ring_ListBox.Location = New-Object System.Drawing.Point(495,35)
$Ring_ListBox.Size = New-Object System.Drawing.Size(70,20)
$Ring_ListBox.Height = 90
$Ring_ListBox.Font = [System.Drawing.Font]::new($Ring_ListBox.Font.Name, $FontSize)
$Ring_ListBox.add_SelectedIndexChanged($CheckListBox)

Foreach ($item in $RingList.Name) {
    [void]$Ring_ListBox.Items.Add($item)
}
$Ring_ListBox.SetSelected(3,$true)

$objForm.Controls.Add($Ring_ListBox)

$PreReq_Checkbox = New-Object System.Windows.Forms.Checkbox
$PreReq_Checkbox.Location = New-Object System.Drawing.Point(25,295)
$PreReq_Checkbox.Size = New-Object System.Drawing.Size(215,25)
$PreReq_Checkbox.Font = [System.Drawing.Font]::new($PreReq_Checkbox.Font.Name, $FontSize)
$PreReq_Checkbox.Text = 'Download Dependencies'
$PreReq_Checkbox.Checked = $true

$objForm.Controls.Add($PreReq_Checkbox)

$ShowAll_Checkbox = New-Object System.Windows.Forms.Checkbox
$ShowAll_Checkbox.Location = New-Object System.Drawing.Point(25,325)
$ShowAll_Checkbox.Size = New-Object System.Drawing.Size(215,25)
$ShowAll_Checkbox.Font = [System.Drawing.Font]::new($ShowAll_Checkbox.Font.Name, $FontSize)
$ShowAll_Checkbox.Text = 'Show All Versions'
$ShowAll_Checkbox.Checked = $false

$objForm.Controls.Add($ShowAll_Checkbox)

if ($Elevated -eq $true) {
    $Sideload_Checkbox = New-Object System.Windows.Forms.Checkbox
    $Sideload_Checkbox.Location = New-Object System.Drawing.Point(305,295)
    $Sideload_Checkbox.Size = New-Object System.Drawing.Size(365,25)
    $Sideload_Checkbox.Font = [System.Drawing.Font]::new($Sideload_Checkbox.Font.Name, $FontSize)
    $Sideload_Checkbox.Text = 'Install Packages'
    $Sideload_Checkbox.Checked = $false

    $objForm.Controls.Add($Sideload_Checkbox)
}

$Center = $objForm.Size.Width / 2
$Height = $objForm.Size.Height

$FormGraphics = $objForm.CreateGraphics()
$Pen = New-Object Drawing.Pen Black
#$objForm.Add_Paint({$FormGraphics.DrawLine($Pen,$Center,0,$Center,$Height)})
#$objForm.Add_Paint({$FormGraphics.DrawLine($Pen,($Center + 1),0,($Center + 1),$Height)}

$OKButton = New-Object System.Windows.Forms.Button
$OKButton.Location = New-Object System.Drawing.Point(($Center - 78),($Height - 90))
$OKButton.Size = New-Object System.Drawing.Size(75,30)
$OKButton.Font = [System.Drawing.Font]::new($OKButton.Font.Name, $FontSize)
$OKButton.Text = 'OK'
$OKButton.FlatStyle = 'Standard'
$OKButton.Add_Click({$OKButton.Enabled = $false})
$OKButton.DialogResult = [System.Windows.Forms.DialogResult]::OK

$objForm.Controls.Add($OKButton)

$CancelButton = New-Object System.Windows.Forms.Button
$CancelButton.Location = New-Object System.Drawing.Point(($Center + 5),($Height - 90))
$CancelButton.Size = New-Object System.Drawing.Size(75,30)
$CancelButton.Font = [System.Drawing.Font]::new($CancelButton.Font.Name, $FontSize)
$CancelButton.Text = 'Cancel'
$CancelButton.FlatStyle = 'Standard'
$CancelButton.Add_Click({$objForm.Close()})

$objForm.Controls.Add($CancelButton)

$objForm.Topmost = $true
$objForm.Add_Shown({$objForm.Activate()})

$OKButton.Enabled = $false
$Result = $objForm.ShowDialog()

if ($Result -ne [System.Windows.Forms.DialogResult]::OK) {
    Exit
}

$PackageFamily = $($PackageList | Where {$_.Identity -eq $Package_ListBox.SelectedItem}).Family
$Arch = $Arch_ListBox.SelectedItem
$Ring = $($RingList | Where {$_.Name -eq $Ring_ListBox.SelectedItem}).Value

############

[System.Net.WebRequest]::DefaultWebProxy = [System.Net.WebRequest]::GetSystemWebProxy()
[System.Net.WebRequest]::DefaultWebProxy.Credentials = [System.Net.CredentialCache]::DefaultNetworkCredentials

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$ProgressPreference = 'SilentlyContinue'

if ($ProductID_TextBox.Text -eq '') {
    try {
        $Response = Invoke-WebRequest -UseBasicParsing -Method 'POST' -Uri 'https://store.rg-adguard.net/api/GetFiles' `
            -Body "type=PackageFamilyName&url=$PackageFamily&ring=$Ring&lang=en-US"
    }
    catch {
        $_.Exception
        Exit 1
    }
}
else {
    $ProductID = $ProductID_TextBox.Text

    try {
        $Response = Invoke-WebRequest -UseBasicParsing -Method 'POST' -Uri 'https://store.rg-adguard.net/api/GetFiles' `
            -Body "type=ProductId&url=$ProductID&ring=$Ring&lang=en-US"
    }
    catch {
        $_.Exception
        Exit 1
    }
}

$Links = $Response.Links.outerHTML | Where-Object {$_ -notmatch 'BlockMap' -and $_ -notmatch '\.eappx' -and $_ -notmatch '\.emsix' -and ($_ -match "$Arch" -or $_ -match '_neutral_')}

$FileList = New-Object System.Collections.ArrayList

Foreach ($File in $Links) {
    $Package = $File.Split('>')[1].Split('<')[0]
    $Family = $Package.Split('_')[0]
    $Version = $Package.Split('_')[1]

    $null = $FileList.Add([PSCustomObject]@{
        'Package' = $Package
        'Family' = $Family
        'Version' = [Version]$Version
    })
}

$AppsOnlyList = New-Object System.Collections.ArrayList

Foreach ($File in ($FileList | Sort-Object -Property Family,Version)) {
    $match = $false

    Foreach ($PreReq in ($DependencyList.GetEnumerator()).Name) {
        if ($File.Family -match $PreReq) {
            $DependencyList[$PreReq] = $File.Package
            $match = $true
            break
        }
    }

    if ($match -eq $false) {
        $URL = ($Links | Where-Object {$_-match $File.Package}).Split('"')[1]

        try {
            $Response = Invoke-WebRequest -UseBasicParsing -Method 'HEAD' -Uri $URL
        }
        catch {
            $_.Exception
            Exit 1
        }

        $LastModified = ([DateTime][string]$Response.Headers['Last-Modified']).ToString('yyyy-MM-dd HH:mm tt')
        $Length = [uint32][string]$Response.Headers['Content-Length']

        if ($Length -ge 1GB) {
            $Size = '{0:N2} GB' -f [float]($Length / 1GB)
        }
        elseif ($Length -ge 1MB) {
            $Size = '{0:N2} MB' -f [float]($Length / 1MB)
        }
        else {
            $Size = '{0:N2} KB' -f [float]($Length / 1KB)
        }

        $null = $AppsOnlyList.Add([PSCustomObject]@{
            'Package' = $File.Package
            'Family' = $File.Family
            'Version' = [Version]$File.Version
            'Major' = $File.Version.Major
            'Last-Modified' = $LastModified
            'Size' = $Size
        })
    }
}

if ($AppsOnlyList.Count -eq 0) {
    $null = $AppsOnlyList.Add([PSCustomObject]@{'Package' = 'No packages listed.'})
    $AppsOnlyList | Out-GridView -Title 'Select Packages for Download' -PassThru | Out-Null
    Exit
}

if ($ShowAll_Checkbox.Checked -eq $false) {
    $UserSelected = ($AppsOnlyList | Group-Object -Property Major | Foreach { $_.Group | Sort Last-Modified | Select -Last 1 } | `
        Select-Object Family,Version,Package,Last-Modified,Size | Sort-Object -Property Last-Modified | `
        Out-GridView -Title 'Select Packages for Download' -PassThru).Package
}
else {
    $UserSelected = ($AppsOnlyList | Select-Object Family,Version,Package,Last-Modified,Size | Sort-Object -Property Last-Modified | `
        Out-GridView -Title 'Select Packages for Download' -PassThru).Package
}

if (($UserSelected).Count -eq 0) {
    Exit
}

$DependencyPath = @()
Set-Location $PSScriptRoot

if ($PreReq_Checkbox.Checked -eq $true) {
    $CurrentFiles = Get-ChildItem -Name -Include *.msix,*.appx

    Foreach ($File in $CurrentFiles) {
        Foreach ($PreReq in ($DependencyList.GetEnumerator()).Name) {
            if ($PreReq -eq 'Microsoft.VCLibs' -and $File -match 'UWPDesktop') {
                break
            }

            if ($File -match $PreReq -and $DependencyList[$PreReq] -ne $null) {
                $FileVersion = [version]$File.Split('_')[1]
                $DependencyVersion = [version]$DependencyList[$PreReq].Split('_')[1]

                $DependencyPath += $File

                if ($FileVersion -ge $DependencyVersion) {
                    'skipping "{0}"' -f ($File.Split('_')[0..2] -join '_')
                    $DependencyList[$PreReq] = $null
                }
                else {
                    'Deleting "{0}"' -f ($File.Split('_')[0..2] -join '_')

                    try {
                        Remove-Item $File
                    }
                    catch {
                        $_.Exception
                        Exit 1
                    }
                }
            }
        }
    }

    $MergedList = ([array]$UserSelected + [array]($DependencyList.Values | Where-Object {$_ -ne $null})) | sort
}
else {
    $MergedList = $UserSelected
}

############

Foreach ($Filename in $MergedList) {
    $URL = ($Links | Where-Object {$_ -match $Filename}).Split('"')[1]

    if (-not (Test-Path -Path $Filename -PathType Leaf)) {
        'Downloading "{0}"' -f $Filename

        try {
            $LastModified = (Invoke-WebRequest -UseBasicParsing -Uri $URL -Method HEAD).Headers.'Last-Modified'
            $Response = Invoke-WebRequest -UseBasicParsing -Uri $URL -OutFile $Filename

            $File = Get-Item -Path $Filename
            $File.CreationTime = $File.LastWriteTime = $LastModified
        }
        catch {
            $_.Exception
            Exit 1
        }
    }
    else {
        'Duplicate file "{0}"' -f $Filename
    }
}

if ($Sideload_Checkbox.Checked -eq $true) {
    foreach ($Package in ($UserSelected | Sort-Object)) {
        'Installing "{0}"' -f $Package

        try {
            if ($DependencyPath -ne '') {
                Add-AppPackage -Path $Package -DependencyPath $DependencyPath
            }
            else {
                Add-AppxPackage -Path $Package
            }
        }
        catch {
            $error[0].InvocationInfo
        }
    }
}

if (([Environment]::GetCommandLineArgs() | Where-Object {$_ -like '-Command'}).Count -gt 0) {
    Write-Host -NoNewline 'Press any key to close window.'
    $null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown')
}
