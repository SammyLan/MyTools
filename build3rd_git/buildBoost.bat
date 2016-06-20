@echo Build BOOST
@set BOOST_DIR=%ExternalDir%boost\
@cd %BOOST_DIR%
@call %BOOST_DIR%bootstrap.bat >%LOGS_DIR%\buildBoost.log

@rem ����ͷ�ļ�
@rem call %BOOST_DIR%b2 headers >>%LOGS_DIR%\buildBoost.log

@rem ����
@set BUILD_CONF=install --prefix=%BULID_DIR%boost --includedir=%LIB3rd%  --libdir=%LIB3rd%Lib toolset=msvc-%VS_VERSION%.0
@call %BOOST_DIR%b2  %BUILD_CONF%>>%LOGS_DIR%\buildBoost.log