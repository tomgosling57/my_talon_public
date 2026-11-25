@echo off
setlocal

:: Check if a virtual environment is active (this is a simplified check and might not be perfectly reliable)
echo.
echo Please ensure you have activated the correct virtual environment before proceeding.
echo Is your virtual environment currently active? (y/n)
set /p venv_active=
if /i "%venv_active%" NEQ "y" (
  echo Virtual environment activation is crucial. Please activate it and run this script again.
  goto :eof
)

:: Check if aider-chat is installed
pip show aider-chat >nul 2>&1
if %errorlevel% == 0 (
  echo aider-chat is already installed.
) else (
  echo Installing aider-chat...
  python -m pip install -U aider-chat
)

:: Check if google-generativeai is installed
pip show google-generativeai >nul 2>&1
if %errorlevel% == 0 (
  echo google-generativeai is already installed.
) else (
  echo Installing google-generativeai...
  pip install -U google-generativeai
)

:: Attempt pipx injection (this might fail if pipx isn't installed)
pipx inject aider-chat google-generativeai >nul 2>&1
if %errorlevel% NEQ 0 (
  echo Warning: pipx injection may have failed.  Ensure pipx is installed and in your PATH.
)


:: API key is read from the environment. Set it once in your shell with:
::   setx GEMINI_API_KEY "your-key-here"
if "%GEMINI_API_KEY%"=="" (
  echo ERROR: GEMINI_API_KEY is not set. Please set it before running this script.
  goto :eof
)

:: Run aider
echo Starting aider...
aider --model gemini/gemini-1.5-flash-latest

endlocal