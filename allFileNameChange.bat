@echo off

:: 이하의 파일이 없을 경우 스크립트 실행하지 않고 종료
IF NOT EXIST %cd%\*.BIN EXIT
IF NOT EXIST %cd%\*.xls EXIT
IF NOT EXIST %cd%\ROUTER\POINT EXIT
IF NOT EXIST %cd%\DRILL\*.DRL EXIT
IF NOT EXIST %cd%\DRILL\*.REP EXIT

:: C:\의 php 디렉토리로 이하 파일 이동
move %cd%\*.BIN C:\php\
move %cd%\*.xls C:\php\
move %cd%\ROUTER\POINT C:\php\
move %cd%\DRILL\*.DRL C:\php\
move %cd%\DRILL\*.REP C:\php\

:: PHP에서 xlsc.php 실행
cd C:\php
php.exe xlsc.php

:: 원래 경로로 복귀
pushd "%~dp0"

:: C:\php 디렉토리에서 원래 경로로 다시 파일 이동
move C:\php\*.BIN %cd%\
move C:\php\*.xls %cd%\
move C:\php\*.ROU %cd%\ROUTER\
move C:\php\*.DRL %cd%\DRILL\
move C:\php\*.REP %cd%\DRILL\

:: DRILL, ROUTER 디렉토리에 작업지시서 엑셀 복사
copy %cd%\*.xls %cd%\DRILL\
copy %cd%\*.xls %cd%\ROUTER\

:: 이 배치파일 삭제
del %cd%\*.bat
