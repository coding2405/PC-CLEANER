@echo off
echo Clearing temporary files and folders...
echo.

:: Clearing temporary files from the user's temporary directory
del /q /s /f %temp%\*.*

:: Clearing temporary files from the system's temporary directory
del /q /s /f %systemroot%\Temp\*.*

:: Removing temporary folders from the user's temporary directory
for /d %%i in (%temp%\*) do rmdir /s /q "%%i"

:: Removing temporary folders from the system's temporary directory
for /d %%i in (%systemroot%\Temp\*) do rmdir /s /q "%%i"

:: Execute PowerShell command to empty the Recycle Bin
powershell.exe -Command "Clear-RecycleBin -Force"

echo YOUR PC HAVE MORE HEALTHY 
pause

