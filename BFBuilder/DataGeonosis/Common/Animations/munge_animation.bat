@REM called from $\Animations\subfolder\
@REM   all params are passed to zenasset
@REM   if there are more than 9 parameters to pass, you can enclose all params in double quotes

@setlocal
@set PATH="%CD%"\..\..\..\..\ToolsFL\Bin;%PATH%

zenasset /multimsh %~1

binmunge -inputfile *.zaa -chunkid zaa_ -ext zaabin -outputdir %2\munged\
binmunge -inputfile *.zaf -chunkid zaf_ -ext zafbin -outputdir %2\munged\

del *.zaa
del *.zaf

@endlocal
