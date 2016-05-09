@set BOOST_DIR=%ExternalDir%boost\
@cd %BOOST_DIR%
@call %BOOST_DIR%bootstrap.bat

@rem 生成头文件
@call %BOOST_DIR%b2 headers

@rem 编译
@call %BOOST_DIR%b2 install --prefix=%BULID_DIR%boost --includedir=%LIB3rd%  --libdir=%LIB3rd%Lib toolset=msvc-%VS_VERSION%.0 >%LOGS_DIR%\buildBoost.log