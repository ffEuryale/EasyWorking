@echo off

move %cd%\*.BIN C:\php
move %cd%\*.xls C:\php

cd c:\php
php.exe xlsc.php

pushd "%~dp0"

move C:\php\*.BIN %cd%\
move C:\php\*.xls %cd%\