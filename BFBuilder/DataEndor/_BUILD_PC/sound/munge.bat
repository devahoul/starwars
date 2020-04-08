@Setlocal enabledelayedexpansion 

@cd   ..\..\
@set PATH="%CD%"\..\ToolsFL\Bin;%PATH%

@set BANKOPT=-template

@call soundmunge.bat pc
@if %SOUNDCLEANLVL%x==1x @del /S /Q _BUILD_PC\sound\*.lvl & @call soundmunge.bat pc

@cd   _BUILD_PC\sound

endlocal
