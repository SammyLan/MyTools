@echo off
@set zip_path=C:\Program Files\7-Zip
@set path=%path%;%zip_path%


@set file_name=%~n1
@set out_dir=%~dp1%file_name%\
@set file_path=%1
@if not exist %out_dir% mkdir %out_dir%
@7z x -y %file_path% -o%out_dir%
