@cd   ..\..\
@call minisoundmunge.bat pc
@if %SOUNDCLEANLVL%x==1x @del /S /Q _BUILD_PC\sound\*.lvl & @call minisoundmunge.bat pc
@cd   _BUILD_PC\sound