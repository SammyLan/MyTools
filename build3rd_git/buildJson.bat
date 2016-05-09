@set JSON_DIR=%ExternalDir%jsoncpp\
@set JSON_BUILD_DIR=%JSON_DIR%makefiles\msvc2010\
@set JSON_SLN=%JSON_BUILD_DIR%jsoncpp.sln

@set BUILD_CONF=Debug
@call devenv %JSON_SLN% /Rebuild %BUILD_CONF% /useenv >%LOGS_DIR%\BuildJSon.log
@copy /Y  %JSON_BUILD_DIR%%BUILD_CONF%\lib_json.lib %LIB3rd_Lib%%BUILD_CONF% 
@xcopy /S /Y %JSON_DIR%Include  %LIB3rd_Inc%   >>%LOGS_DIR%\xcopy.log



@set BUILD_CONF=Release
@call devenv %JSON_SLN% /Rebuild %BUILD_CONF% /useenv >>%LOGS_DIR%\BuildJSon.log
@copy /Y  %JSON_BUILD_DIR%%BUILD_CONF%\lib_json.lib %LIB3rd_Lib%%BUILD_CONF% 
@xcopy /S /Y %JSON_DIR%Include  %LIB3rd_Inc%   >>%LOGS_DIR%\xcopy.log


