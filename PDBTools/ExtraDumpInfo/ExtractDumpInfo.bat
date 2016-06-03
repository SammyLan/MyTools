@echo off
@set path=%path%;C:\Program Files (x86)\Windows Kits\8.1\Debuggers\x86


@set _NT_ALT_SYMBOL_PATH=%_NT_ALT_SYMBOL_PATH%
@set _NT_SOURCE_PATH=%_NT_SOURCE_PATH%;SRV*D:\HummerSrcCache
@set _NT_SYMBOL_PATH=%_NT_SYMBOL_PATH%;srv*D:\symbols\MicrosoftPublicSymbols*https://msdl.microsoft.com/download/symbols;srv*D:\symbols*\\tencent.com\tfs\部门目录\SNG社交网络事业群\社交平台部\微云\windows\PDB\FinalRelease
@set  _NT_SYMBOL_PROXY=


@set dump_file=%1
@set log_file=%~dpn1.log
@set log_file_detail=%~dpn1_detal.log

@call windbg.exe -c  "kc;q" -loga "%log_file%" -z %dump_file%

@call windbg.exe -c  "kp;q" -loga "%log_file%" -z %log_file_detail%
