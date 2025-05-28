set "CHROMEWRAPPER_FLAGS="

set "CHROMEWRAPPER_FEATURES_ENABLE=--enable-features="

set "CHROMEWRAPPER_FEATURES_DISABLE=--disable-features="

start "Chrome" "C:\Program Files\Google\Chrome\Application\chrome.exe" --start-maximized --no-default-browser-check %CHROMEWRAPPER_FLAGS% %CHROMEWRAPPER_FEATURES_ENABLE% %CHROMEWRAPPER_FEATURES_DISABLE% %*
