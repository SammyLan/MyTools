@set MajorVer=3.5
@set BuildVer=1710

@set ROOT_DIR=%~dp0
@set TFSROOT=\\tencent.com\tfs\����Ŀ¼\SNG�罻������ҵȺ\�罻ƽ̨��\΢��\windows
@set PDB_DIR=%TFSROOT%\PDB\%MajorVer%
@set PACK_DIR=%TFSROOT%\��װ��\%MajorVer%
@set BACKUP_DIR=%TFSROOT%\��װ��\�ѷ�����װ��\%MajorVer%

@xcopy /Y %PDB_DIR%\weiyunPDB_%MajorVer%.0.%BuildVer%* %ROOT_DIR%
@xcopy /Y %PACK_DIR%\WeiyunInstall_Beta_1_%MajorVer%.0.%BuildVer%*  %ROOT_DIR%

@xcopy /Y %PDB_DIR%\weiyunPDB_%MajorVer%.0.%BuildVer%* %BACKUP_DIR%
@xcopy /Y %PACK_DIR%\WeiyunInstall_Beta_1_%MajorVer%.0.%BuildVer%*  %BACKUP_DIR%

