@echo off

setlocal EnableDelayedExpansion
set "CHROMEWRAPPER_FLAGS=--start-maximized --no-default-browser-check"

for /f "usebackq delims=" %%L in ("C:\Program Files\Google\Chrome\Application\80-hardening-guide-flags.conf") do (
  set "CHROMEWRAPPER_FLAGS=!CHROMEWRAPPER_FLAGS! %%L"
)

start "Chrome" "C:\Program Files\Google\Chrome\Application\chrome.exe" %CHROMEWRAPPER_FLAGS% %*
endlocal
