@echo off
@set extract_dir=%1
@set CUR_DIR=%~dp0

@for /f "delims=" %%i in ('dir /B /S "%extract_dir%"\*.zip') do (call %CUR_DIR%ExtractDumpFile.bat %%i)
@for /f "delims=" %%i in ('dir /B /S "%extract_dir%"\*.dmp') do (call %CUR_DIR%ExtractDumpInfo.bat %%i)

@pause