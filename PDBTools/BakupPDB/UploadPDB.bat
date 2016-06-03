@setlocal enabledelayedexpansion
@echo off
@set ROOT_DIR=%~dp0
@set ENV_FILE=%ROOT_DIR%PDB.ini

@for /F "tokens=1,2* delims==" %%i in (%ENV_FILE%) do (
     @set VAR=%%i
     @set VAL=%%j
     @set !VAR!=!VAL!
)


@set PDB_DIR=%1
@if not exist %PDB_DIR% do set PDB_DIR=%ROOT_DIR%PDB
@echo %PDB_DIR%
@if exist %PDB_DIR% (
	!symstorecmd! add  /r /f "%PDB_DIR%\*.*" /s "%PDB_Server%" /t "!PRODUCT_NAME!" /v "Build" /c "Dailybuild" /compress
)
@echo on
@rem cmd