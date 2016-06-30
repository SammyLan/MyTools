@setlocal enabledelayedexpansion
@echo off
@set ROOT_DIR=%~dp0
@set ENV_FILE=%ROOT_DIR%PDB.ini

@for /F "tokens=1,2* delims==" %%i in (%ENV_FILE%) do (
     @set VAR=%%i
     @set VAL=%%j
     @set !VAR!=!VAL!
)

@set file_name=%~n1
@set out_dir=%~dp1%file_name%\
@set file_path=%1
@if not exist %out_dir% mkdir %out_dir%
@7z x -y %file_path% -o%out_dir%

@call %ROOT_DIR%UploadPDB.bat %out_dir%

@pause
@rmdir /S /Q %out_dir%