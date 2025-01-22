:vnkllr
timeout /t 10 /nobreak
taskkill /IM veyon-service.exe /T /F
taskkill /IM veyon-master.exe /T /F
taskkill /IM veyon-server.exe /T /F
taskkill /IM veyon-viewer.exe /T /F
goto :vnkllr