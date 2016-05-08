@setlocal enabledelayedexpansion

@rem ≈‰÷√VS∞Ê±æ
@set VS_VERSION=14

@set CUR_DIR=%~dp0
@set NASM_DIR=%CUR_DIR%nasm
@set PATH=%NASM_DIR%;%path%

@set VS_TOOL_DIR=!VS%VS_VERSION%0COMNTOOLS!..\..\
@call "%VS_TOOL_DIR%VC\vcvarsall.bat" x86

@set LOGS_DIR=%CUR_DIR%Logs
@if not exist %LOGS_DIR% mkdir %LOGS_DIR%

@set BULID_DIR=%CUR_DIR%build\
@if not exist %BULID_DIR% mkdir %BULID_DIR%

@set LIB3rd=%CUR_DIR%externals\
@set LIB3rd_Inc=%LIB3rd%include\
@set LIB3rd_Lib=%LIB3rd%Lib
@set LIB3rd_Bin=%LIB3rd%Bin
@if not exist %LIB3rd% mkdir %LIB3rd%
@if not exist %LIB3rd_Inc% mkdir %LIB3rd_Inc%
@if not exist %LIB3rd_Lib%Debug mkdir %LIB3rd_Lib%Debug
@if not exist %LIB3rd_Lib%Release mkdir %LIB3rd_Lib%Release
@if not exist %LIB3rd_Bin%Debug mkdir %LIB3rd_Bin%Debug
@if not exist %LIB3rd_Bin%Release mkdir %LIB3rd_Bin%Release

@set ExternalDir=%CUR_DIR%..\
@set OPENSSL_BULID_DIR=%CUR_DIR%build\openssl\

@call %1
@cmd