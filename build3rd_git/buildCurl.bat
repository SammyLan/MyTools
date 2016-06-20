@set curl_dir=%ExternalDir%curl\
@set curl_builds=%curl_dir%builds\
@cd %curl_dir%winbuild

@rem build Debug
@set BUILD_CONF=Debug
@set BUILD_OPT=RTLIBCFG=static mode=static ENABLE_WINSSL=no VC=%VS_VERSION%  DEBUG=yes _WIN32_WINNT=0x0500
@nmake /f Makefile.vc %BUILD_OPT%   >%LOGS_DIR%\BuildCurl.log
@rem copy
@set COPYFROMDIR=%curl_builds%libcurl-vc%VS_VERSION%-x86-%BUILD_CONF%-static-ipv6-sspi\
@xcopy /S /Y %COPYFROMDIR%include  %LIB3rd_Inc%  >%LOGS_DIR%\xcopy.log
@xcopy /S /Y %COPYFROMDIR%Lib  %LIB3rd_Lib%  >>%LOGS_DIR%\xcopy.log


@rem build Release
@set BUILD_CONF=Release
@set BUILD_OPT=RTLIBCFG=static mode=static ENABLE_WINSSL=no VC=%VS_VERSION% _WIN32_WINNT=0x0501
@nmake /f Makefile.vc %BUILD_OPT%   >>%LOGS_DIR%\BuildCurl.log
@rem copy
@set COPYFROMDIR=%curl_builds%libcurl-vc%VS_VERSION%-x86-%BUILD_CONF%-static-ipv6-sspi\
@xcopy /S /Y %COPYFROMDIR%include  %LIB3rd_Inc%  >>%LOGS_DIR%\xcopy.log
@xcopy /S /Y %COPYFROMDIR%Lib  %LIB3rd_Lib%  >>%LOGS_DIR%\xcopy.log