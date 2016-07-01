@set MajorVer=3.5
@set BuildVer=1710

@set ROOT_DIR=%~dp0
@set TFSROOT=\\tencent.com\tfs\部门目录\SNG社交网络事业群\社交平台部\微云\windows
@set PDB_DIR=%TFSROOT%\PDB\%MajorVer%
@set PACK_DIR=%TFSROOT%\安装包\%MajorVer%
@set BACKUP_DIR=%TFSROOT%\安装包\已发布安装包\%MajorVer%

@xcopy /Y %PDB_DIR%\weiyunPDB_%MajorVer%.0.%BuildVer%* %ROOT_DIR%
@xcopy /Y %PACK_DIR%\WeiyunInstall_Beta_1_%MajorVer%.0.%BuildVer%*  %ROOT_DIR%

@xcopy /Y %PDB_DIR%\weiyunPDB_%MajorVer%.0.%BuildVer%* %BACKUP_DIR%
@xcopy /Y %PACK_DIR%\WeiyunInstall_Beta_1_%MajorVer%.0.%BuildVer%*  %BACKUP_DIR%

