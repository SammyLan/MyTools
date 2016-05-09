@set openssl_dir=%ExternalDir%openssl
@cd %openssl_dir%

@set BuildConf=Release
@set BUILD_OUT_DIR=%OPENSSL_BULID_DIR%lib%BuildConf%
@set BUILD_OPT=VC-WIN32 no-shared --prefix=%BUILD_OUT_DIR% --openssldir=%BUILD_OUT_DIR%
@perl Configure  %BUILD_OPT%  >%LOGS_DIR%\buildopensll.log
@nmake  install >>%LOGS_DIR%\buildopensll.log
@xcopy /S /Y %BUILD_OUT_DIR%\include  %LIB3rd_Inc%  >%LOGS_DIR%\xcopy.log
@xcopy /S /Y %BUILD_OUT_DIR%\Lib  %LIB3rd_Lib%%BuildConf%  >>%LOGS_DIR%\xcopy.log

@set BuildConf=Debug
@set BUILD_OUT_DIR=%OPENSSL_BULID_DIR%lib%BuildConf%
@set BUILD_OPT=debug-VC-WIN32 no-shared --prefix=%BUILD_OUT_DIR% --openssldir=%BUILD_OUT_DIR%
@perl Configure  %BUILD_OPT%  >>%LOGS_DIR%\buildopensll.log
@nmake  install >>%LOGS_DIR%\buildopensll.log
@xcopy /S /Y %BUILD_OUT_DIR%\include  %LIB3rd_Inc%  >>%LOGS_DIR%\xcopy.log
@xcopy /S /Y %BUILD_OUT_DIR%\Lib  %LIB3rd_Lib%%BuildConf%  >>%LOGS_DIR%\xcopy.log


@set BuildConf=Release
@set BUILD_OUT_DIR=%OPENSSL_BULID_DIR%\dll%BuildConf%
@set BUILD_OPT=VC-WIN32 --prefix=%BUILD_OUT_DIR% --openssldir=%BUILD_OUT_DIR%
@perl Configure  %BUILD_OPT%  >>%LOGS_DIR%\buildopensll.log
@nmake  install >>%LOGS_DIR%\buildopensll.log
@xcopy /S /Y %BUILD_OUT_DIR%\include  %LIB3rd_Inc%  >>%LOGS_DIR%\xcopy.log
@xcopy /S /Y %BUILD_OUT_DIR%\Lib  %LIB3rd_Lib%%BuildConf%  >>%LOGS_DIR%\xcopy.log
@xcopy /S /Y %BUILD_OUT_DIR%\Bin  %LIB3rd_Bin%%BuildConf%  >>%LOGS_DIR%\xcopy.log

@set BuildConf=Debug
@set BUILD_OUT_DIR=%OPENSSL_BULID_DIR%\dll%BuildConf%
@set BUILD_OPT=debug-VC-WIN32 --prefix=%BUILD_OUT_DIR% --openssldir=%BUILD_OUT_DIR%
@perl Configure  %BUILD_OPT%  >>%LOGS_DIR%\buildopensll.log
@nmake   install >>%LOGS_DIR%\buildopensll.log
@xcopy /S /Y %BUILD_OUT_DIR%\include  %LIB3rd_Inc%  >>%LOGS_DIR%\xcopy.log
@xcopy /S /Y %BUILD_OUT_DIR%\Lib  %LIB3rd_Lib%%BuildConf%  >>%LOGS_DIR%\xcopy.log
@xcopy /S /Y %BUILD_OUT_DIR%\Bin  %LIB3rd_Bin%%BuildConf%  >>%LOGS_DIR%\xcopy.log

@cd %CUR_DIR%