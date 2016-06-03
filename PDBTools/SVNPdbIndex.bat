@rem SVN Ô´Âë-PDB¹ØÁª
@setlocal enabledelayedexpansion
@echo off

@set WINDBGDIR=C:\Program Files (x86)\Windows Kits\8.1\Debuggers\x86\srcsrv
@set PERLDIR=C:\Perl\bin\
@set path=%WINDBGDIR%;%PERLDIR%;%path%

@set svnindexcmd="%WINDBGDIR%\svnindex.cmd"

@set CUR_DIR=%~dp0
@set SRC_DIR=%1
@set PDB_DIR=%2

@if not exist %SRC_DIR% then goto error
@if not exist %PDB_DIR% then goto error

@call %svnindexcmd% /source="%SRC_DIR%" /symbols="%PDB_DIR%" /debug
@goto end
:error
@echo usage:
@echo SVNPdbIndex source_dir pdb_dir
:end
@echo on
@pause