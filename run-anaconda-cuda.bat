@echo off
REM Launch the GPU version from an Anaconda Prompt

REM Change ANACONDA_DIR if your Anaconda installation path is different
set "ANACONDA_DIR=%USERPROFILE%\anaconda3"

if not exist "%ANACONDA_DIR%\Scripts\activate.bat" (
    echo Could not find "%ANACONDA_DIR%\Scripts\activate.bat".
    echo Please edit this script to point to your Anaconda installation.
    pause
    exit /b 1
)

start "" "%windir%\System32\cmd.exe" /K "call \"%ANACONDA_DIR%\Scripts\activate.bat\" deeplivecam && python run.py --execution-provider cuda"
