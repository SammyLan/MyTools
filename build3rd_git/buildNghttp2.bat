@set NGHTTP2_DIR=%ExternalDir%\nghttp2
@set NGHTTP2_BUILDDIR=%BULID_DIR%nghttp2
@set NGHTTP2_Inc=%LIB3rd_Inc%nghttp2\

@if not exist %NGHTTP2_BUILDDIR% mkdir %NGHTTP2_BUILDDIR%
@cd %NGHTTP2_BUILDDIR%

@cmake -G "NMake Makefiles" %NGHTTP2_DIR%  >%LOGS_DIR%\buildNghttp2.log
@nmake  >>%LOGS_DIR%\buildNghttp2.log

@if not exist %NGHTTP2_Inc% mkdir %NGHTTP2_Inc%
@copy /Y %NGHTTP2_DIR%\lib\includes\nghttp2\nghttp2.h %NGHTTP2_Inc%
@copy /Y %NGHTTP2_BUILDDIR%\lib\includes\nghttp2\nghttp2ver.h %NGHTTP2_Inc%
@copy /Y %NGHTTP2_BUILDDIR%\lib\nghttp2.lib %LIB3rd_Lib%

@cd %CUR_DIR%