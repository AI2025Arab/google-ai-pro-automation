@echo off
chcp 65001 >nul
title Google AI Pro (5 TB) 2-Year Zero Cost - Setup and Launch
cd /d "%~dp0"

echo ======================================================================
echo   [1/3] Installing Python Dependencies (FastAPI, Uvicorn, Playwright)...
echo ======================================================================
python -m pip install -r requirements.txt

echo.
echo ======================================================================
echo   [2/3] Installing Playwright Chromium Browser...
echo ======================================================================
python -m playwright install chromium

echo.
echo ======================================================================
echo   [3/3] Launching Web Console: http://127.0.0.1:8765 ...
echo ======================================================================
start "" "http://127.0.0.1:8765"
python app.py
pause
