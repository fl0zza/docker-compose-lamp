@ECHO OFF
docker-compose down
setlocal
:PROMPT
SET /P CONFIRM=Enter to exit..
IF /I "%CONFIRM%" NEQ "Y" exit
:END
endlocal