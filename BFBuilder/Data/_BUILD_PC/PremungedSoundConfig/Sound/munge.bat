@Setlocal enabledelayedexpansion 

@cd   ..\..\
@set PATH="%CD%"\..\ToolsFL\Bin;%PATH%

@set BANKOPT=-template

@call soundmunge.bat pc
@if %SOUNDCLEANLVL%x==1x @del /S /Q _BUILD_PC\sound\*.lvl & @call soundmunge.bat pc

@if %SOUNDLVL%x==globalx goto buildglobalbank
@if not %SOUNDLVL%x==x goto skipglobalbank
:buildglobalbank
@rem Build a global sound bank...
@set BANKLIST=
@for /R %%A in (*.sfx) do @set BANKLIST=!BANKLIST! %%A
@if %SOUNDLOG%x==1x ( @set SOUNDOPT=-verbose & @set SOUNDLOGOUT=%LOGDIR%\SoundBankLog.txt ) else ( @set SOUNDOPT= & @set SOUNDLOGOUT=NUL )
@echo Munging common.bnk, this could take a while...
@soundflmunge -platform pc -banklistinput %BANKLIST% -bankoutput _LVL_PC\Sound\common.bnk -checkdate -resample -compact nowarning -checkid noabort -relativepath %SOUNDOPT% 2>>.\MungeLog.txt 1>>%SOUNDLOGOUT%

:skipglobalbank

@cd   _BUILD_PC\sound

endlocal
