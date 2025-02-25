@echo off

set "CHROMEWRAPPER_NAME=chromewrapper"
set "CHROMEWRAPPER_DESCRIPTION=Does stuff"
set "CHROMEWRAPPER_PATH=C:\Program Files\Google\Chrome\Application\chromewrapper.bat"
set "CHROMEWRAPPER_AGRS=\"%CHROMEWRAPPER_PATH%\" \"%%1\""

if not exist "%CHROMEWRAPPER_PATH%" (

	echo ERROR: "%CHROMEWRAPPER_PATH%" not found.

) else (

	reg add hklm /f>nul 2>&1

	if ERRORLEVEL 1 (

		echo ERROR: you have no privileges.

	) else (

		reg add "HKLM\Software\Classes\%CHROMEWRAPPER_NAME%HTML" /v "" /t REG_SZ /d "%CHROMEWRAPPER_NAME% Document" /f
		reg add "HKLM\Software\Classes\%CHROMEWRAPPER_NAME%HTML\shell\open\command" /v "" /t REG_SZ /d "%CHROMEWRAPPER_AGRS%" /f

		reg add "HKLM\Software\Classes\%CHROMEWRAPPER_NAME%URL" /v "" /t REG_SZ /d "%CHROMEWRAPPER_NAME% Protocol" /f
		reg add "HKLM\Software\Classes\%CHROMEWRAPPER_NAME%URL" /v "EditFlags" /t REG_DWORD /d "2" /f
		reg add "HKLM\Software\Classes\%CHROMEWRAPPER_NAME%URL" /v "FriendlyTypeName" /t REG_SZ /d "%CHROMEWRAPPER_NAME% Protocol" /f
		reg add "HKLM\Software\Classes\%CHROMEWRAPPER_NAME%URL" /v "URL Protocol" /t REG_SZ /d "" /f
		reg add "HKLM\Software\Classes\%CHROMEWRAPPER_NAME%URL\shell\open\command" /v "" /t REG_SZ /d "%CHROMEWRAPPER_AGRS%" /f

		reg add "HKLM\Software\RegisteredApplications" /v "%CHROMEWRAPPER_NAME%" /t REG_SZ /d "Software\Clients\StartMenuInternet\%CHROMEWRAPPER_NAME%\Capabilities" /f

		reg add "HKLM\Software\Clients\StartMenuInternet\%CHROMEWRAPPER_NAME%" /v "" /t REG_SZ /d "%CHROMEWRAPPER_NAME%" /f

		reg add "HKLM\Software\Clients\StartMenuInternet\%CHROMEWRAPPER_NAME%\shell\open\command" /v "" /t REG_SZ /d "\"%CHROMEWRAPPER_PATH%\"" /f

		reg add "HKLM\Software\Clients\StartMenuInternet\%CHROMEWRAPPER_NAME%\InstallInfo" /v "IconsVisible" /t REG_DWORD /d "1" /f

		reg add "HKLM\Software\Clients\StartMenuInternet\%CHROMEWRAPPER_NAME%\Capabilities" /v "ApplicationName" /t REG_SZ /d "%CHROMEWRAPPER_NAME%" /f
		reg add "HKLM\Software\Clients\StartMenuInternet\%CHROMEWRAPPER_NAME%\Capabilities" /v "ApplicationDescription" /t REG_SZ /d "%CHROMEWRAPPER_DESCRIPTION%" /f

		reg add "HKLM\Software\Clients\StartMenuInternet\%CHROMEWRAPPER_NAME%\Capabilities\FileAssociations" /v ".htm" /t REG_SZ /d "%CHROMEWRAPPER_NAME%HTML" /f
		reg add "HKLM\Software\Clients\StartMenuInternet\%CHROMEWRAPPER_NAME%\Capabilities\FileAssociations" /v ".html" /t REG_SZ /d "%CHROMEWRAPPER_NAME%HTML" /f
		reg add "HKLM\Software\Clients\StartMenuInternet\%CHROMEWRAPPER_NAME%\Capabilities\FileAssociations" /v ".pdf" /t REG_SZ /d "%CHROMEWRAPPER_NAME%HTML" /f
		reg add "HKLM\Software\Clients\StartMenuInternet\%CHROMEWRAPPER_NAME%\Capabilities\FileAssociations" /v ".shtml" /t REG_SZ /d "%CHROMEWRAPPER_NAME%HTML" /f
		reg add "HKLM\Software\Clients\StartMenuInternet\%CHROMEWRAPPER_NAME%\Capabilities\FileAssociations" /v ".svg" /t REG_SZ /d "%CHROMEWRAPPER_NAME%HTML" /f
		reg add "HKLM\Software\Clients\StartMenuInternet\%CHROMEWRAPPER_NAME%\Capabilities\FileAssociations" /v ".png" /t REG_SZ /d "%CHROMEWRAPPER_NAME%HTML" /f
		reg add "HKLM\Software\Clients\StartMenuInternet\%CHROMEWRAPPER_NAME%\Capabilities\FileAssociations" /v ".jpeg" /t REG_SZ /d "%CHROMEWRAPPER_NAME%HTML" /f
		reg add "HKLM\Software\Clients\StartMenuInternet\%CHROMEWRAPPER_NAME%\Capabilities\FileAssociations" /v ".jpg" /t REG_SZ /d "%CHROMEWRAPPER_NAME%HTML" /f
		reg add "HKLM\Software\Clients\StartMenuInternet\%CHROMEWRAPPER_NAME%\Capabilities\FileAssociations" /v ".webp" /t REG_SZ /d "%CHROMEWRAPPER_NAME%HTML" /f
		reg add "HKLM\Software\Clients\StartMenuInternet\%CHROMEWRAPPER_NAME%\Capabilities\FileAssociations" /v ".xht" /t REG_SZ /d "%CHROMEWRAPPER_NAME%HTML" /f
		reg add "HKLM\Software\Clients\StartMenuInternet\%CHROMEWRAPPER_NAME%\Capabilities\FileAssociations" /v ".xhtml" /t REG_SZ /d "%CHROMEWRAPPER_NAME%HTML" /f

		reg add "HKLM\Software\Clients\StartMenuInternet\%CHROMEWRAPPER_NAME%\Capabilities\StartMenu" /v "StartMenuInternet" /t REG_SZ /d "%CHROMEWRAPPER_NAME%" /f

		reg add "HKLM\Software\Clients\StartMenuInternet\%CHROMEWRAPPER_NAME%\Capabilities\URLAssociations" /v "ftp" /t REG_SZ /d "%CHROMEWRAPPER_NAME%URL" /f
		reg add "HKLM\Software\Clients\StartMenuInternet\%CHROMEWRAPPER_NAME%\Capabilities\URLAssociations" /v "http" /t REG_SZ /d "%CHROMEWRAPPER_NAME%URL" /f
		reg add "HKLM\Software\Clients\StartMenuInternet\%CHROMEWRAPPER_NAME%\Capabilities\URLAssociations" /v "https" /t REG_SZ /d "%CHROMEWRAPPER_NAME%URL" /f
		reg add "HKLM\Software\Clients\StartMenuInternet\%CHROMEWRAPPER_NAME%\Capabilities\URLAssociations" /v "mailto" /t REG_SZ /d "%CHROMEWRAPPER_NAME%URL" /f
		reg add "HKLM\Software\Clients\StartMenuInternet\%CHROMEWRAPPER_NAME%\Capabilities\URLAssociations" /v "webcal" /t REG_SZ /d "%CHROMEWRAPPER_NAME%URL" /f
		reg add "HKLM\Software\Clients\StartMenuInternet\%CHROMEWRAPPER_NAME%\Capabilities\URLAssociations" /v "urn" /t REG_SZ /d "%CHROMEWRAPPER_NAME%URL" /f
		reg add "HKLM\Software\Clients\StartMenuInternet\%CHROMEWRAPPER_NAME%\Capabilities\URLAssociations" /v "tel" /t REG_SZ /d "%CHROMEWRAPPER_NAME%URL" /f
		reg add "HKLM\Software\Clients\StartMenuInternet\%CHROMEWRAPPER_NAME%\Capabilities\URLAssociations" /v "smsto" /t REG_SZ /d "%CHROMEWRAPPER_NAME%URL" /f
		reg add "HKLM\Software\Clients\StartMenuInternet\%CHROMEWRAPPER_NAME%\Capabilities\URLAssociations" /v "sms" /t REG_SZ /d "%CHROMEWRAPPER_NAME%URL" /f
		reg add "HKLM\Software\Clients\StartMenuInternet\%CHROMEWRAPPER_NAME%\Capabilities\URLAssociations" /v "nntp" /t REG_SZ /d "%CHROMEWRAPPER_NAME%URL" /f
		reg add "HKLM\Software\Clients\StartMenuInternet\%CHROMEWRAPPER_NAME%\Capabilities\URLAssociations" /v "news" /t REG_SZ /d "%CHROMEWRAPPER_NAME%URL" /f
		reg add "HKLM\Software\Clients\StartMenuInternet\%CHROMEWRAPPER_NAME%\Capabilities\URLAssociations" /v "mms" /t REG_SZ /d "%CHROMEWRAPPER_NAME%URL" /f
		reg add "HKLM\Software\Clients\StartMenuInternet\%CHROMEWRAPPER_NAME%\Capabilities\URLAssociations" /v "irc" /t REG_SZ /d "%CHROMEWRAPPER_NAME%URL" /f
		reg add "HKLM\Software\Clients\StartMenuInternet\%CHROMEWRAPPER_NAME%\Capabilities\URLAssociations" /v "xml" /t REG_SZ /d "%CHROMEWRAPPER_NAME%URL" /f

		%windir%\system32\control.exe /name Microsoft.DefaultPrograms /page pageDefaultProgram\pageAdvancedSettings?pszAppName=%CHROMEWRAPPER_NAME%
	)
)

pause
