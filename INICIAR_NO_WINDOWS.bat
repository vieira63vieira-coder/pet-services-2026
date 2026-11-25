@echo off
cd /d "%~dp0"
where python >nul 2>nul
if errorlevel 1 (
  echo Python 3 nao foi encontrado.
  echo Instale Python 3 ou abra um terminal nesta pasta e execute: python -m http.server 8000
  pause
  exit /b 1
)
start "Pet Services 2026" http://localhost:8000
python -m http.server 8000
