@ECHO OFF
docker-compose start
setlocal
:PROMPT
SET /P CONFIRM=Enter to exit..
IF /I "%CONFIRM%" NEQ "Y" exit
:END
endlocal