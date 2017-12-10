:loop
ping -n 1 google.com
IF %ERRORLEVEL% NEQ 0 GOTO RESET

:wait
timeout /t 300
GOTO loop

:RESET 
echo %errorlevel%
netsh interface set interface Wi-Fi DISABLE
timeout /t 5
netsh interface set interface Wi-Fi ENABLE
GOTO wait
