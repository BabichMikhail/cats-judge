@echo off
call "%~dp0..\preparevs.cmd" >nul
:SET SP_USER=
:SET SP_PASSWORD=
SET SP_RUNAS=0
SET SP_WRITE_LIMIT=30
SET SP_MEMORY_LIMIT=256
SET SP_DEADLINE=10
SET SP_REPORT_FILE=report.txt
SET SP_OUTPUT_FILE=stdout.txt
SET SP_HIDE_REPORT=1
SET SP_HIDE_OUTPUT=0
SET SP_SECURITY_LEVEL=0
SET CATS_JUDGE=1
SET SP_LOAD_RATIO=5%%
:SET SP_LEGACY=sp00
SET SP_JSON=1

perl "%~dp0..\judge.pl" %*
