@setlocal enabledelayedexpansion
@echo off

@set ROOT_DIR=%~dp0
@set ENV_FILE=%ROOT_DIR%PDB.ini

@for /F "tokens=1,2* delims==" %%i in (%ENV_FILE%) do (
     @set VAR=%%i
     @set VAL=%%j
     @set !VAR!=!VAL!
)

@echo on
@cmd