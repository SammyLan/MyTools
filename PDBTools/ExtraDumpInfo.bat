@set path=%path%;C:\Program Files (x86)\Windows Kits\8.1\Debuggers\x86


@set _NT_ALT_SYMBOL_PATH=%_NT_ALT_SYMBOL_PATH%
@set _NT_SOURCE_PATH=%_NT_SOURCE_PATH%;SRV*D:\HummerSrcCache
@set _NT_SYMBOL_PATH=%_NT_SYMBOL_PATH%;srv*D:\symbols\MicrosoftPublicSymbols*https://msdl.microsoft.com/download/symbols;srv*D:\symbols*\\tencent.com\tfs\����Ŀ¼\SNG�罻������ҵȺ\�罻ƽ̨��\΢��\windows\PDB\FinalRelease
@set  _NT_SYMBOL_PROXY=


@set dump_file=%1

@call windbg.exe -c  "kc;q" -loga "dump.log" -z %dump_file%
