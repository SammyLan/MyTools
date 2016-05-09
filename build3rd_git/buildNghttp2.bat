@set NGHTTP2_DIR=%ExternalDir%\nghttp2
@set NGHTTP2_BUILDDIR=%BULID_DIR%nghttp2

@if not exist %NGHTTP2_BUILDDIR% mkdir %NGHTTP2_BUILDDIR%
@cd %NGHTTP2_BUILDDIR%

@cmake -G "NMake Makefiles" %NGHTTP2_DIR%  >%LOGS_DIR%\buildNghttp2.log
@nmake  >>%LOGS_DIR%\buildNghttp2.log

@cd %CUR_DIR%