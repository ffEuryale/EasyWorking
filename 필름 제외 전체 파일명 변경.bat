@echo off

IF NOT EXIST %cd%\*.BIN EXIT
IF NOT EXIST %cd%\*.xls EXIT
IF NOT EXIST %cd%\ROUTER\POINT EXIT
IF NOT EXIST %cd%\DRILL\*.DRL EXIT
IF NOT EXIST %cd%\DRILL\*.REP EXIT

move %cd%\*.BIN C:\php\
move %cd%\*.xls C:\php\
move %cd%\ROUTER\POINT C:\php\
move %cd%\DRILL\*.DRL C:\php\
move %cd%\DRILL\*.REP C:\php\

cd C:\php
php.exe xlsc.php

pushd "%~dp0"

move C:\php\*.BIN %cd%\
move C:\php\*.xls %cd%\
move C:\php\*.ROU %cd%\ROUTER\
move C:\php\*.DRL %cd%\DRILL\
move C:\php\*.REP %cd%\DRILL\

del %cd%\*.bat
