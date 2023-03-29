@echo off

::확장자가 .bin일 경우 .BIN으로 변경
ren *.bin *.BIN

:: 이하의 파일이 없을 경우 스크립트 실행하지 않고 종료
IF NOT EXIST %cd%\*.BIN EXIT
IF NOT EXIST %cd%\*.xls EXIT
IF NOT EXIST %cd%\ROUTER\POINT EXIT
IF NOT EXIST %cd%\DRILL\*.DRL EXIT
IF NOT EXIST %cd%\DRILL\*.REP EXIT

:: C:\의 php\@@WORK 디렉토리로 이하 파일 이동
move %cd%\*.BIN C:\php\@@WORK
move %cd%\*.xls C:\php\@@WORK
move %cd%\ROUTER\POINT C:\php\@@WORK
move %cd%\DRILL\*.DRL C:\php\@@WORK
move %cd%\DRILL\*.REP C:\php\@@WORK

:: 실행 디렉토리가 E:\이므로 C:\로 이동 후 PHP에서 xlsc.php 실행
cd C:\php\
C:
php.exe xlsc.php

:: 원래 경로로 복귀
pushd "%~dp0"

:: C:\php\@@WORK 디렉토리에서 원래 경로로 다시 파일 이동
move C:\php\@@WORK\*.BIN %cd%\
move C:\php\@@WORK\*.xls %cd%\
move C:\php\@@WORK\*.ROU %cd%\ROUTER\
move C:\php\@@WORK\*.DRL %cd%\DRILL\
move C:\php\@@WORK\*.REP %cd%\DRILL\

:: AOI, DRILL, ROUTER 디렉토리에 작업지시서 엑셀 복사
copy %cd%\*.xls %cd%\AOI\
copy %cd%\*.xls %cd%\DRILL\
copy %cd%\*.xls %cd%\ROUTER\

:: 이 배치파일 삭제
del %cd%\*.bat
