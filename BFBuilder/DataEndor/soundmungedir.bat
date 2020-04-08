@rem Save the starting directory
@for /F %%A in ('cd') do @set STARTDIR=%%A

@if %1x==x goto nomungedir
@if %2x==x goto nosourcedir
@if %3x==x goto nooverridedir
@if %4x==x goto noplatform
@if %5x==x goto nomungelogdir
@if %6x==x goto noleveldir
@if %7x==x goto nolevelsrcdir
@if %8x==x goto nolevelfile

@rem Setup directories
@set MUNGEDIR=%STARTDIR%\%1\munged
@set SOURCEDIR=%STARTDIR%\%2
@set PLATFORMDIR=%STARTDIR%\%3
@set LOGDIR=%STARTDIR%\%5
@set LEVELDIR=%STARTDIR%\%6
@set LEVELFILEREQ=%8%.req
@set LEVELFILELVL=%MUNGEDIR%\%8%.lvl
@set CHECKDATE=-checkdate
@if %SOUNDNODATECHECK%x==1x @set CHECKDATE=

@rem Build up a list of directories for level pack to search for source files
@Setlocal enabledelayedexpansion 
@set LEVELSRCDIR=
@set PATH="%CD%"\..\ToolsFL\Bin;%PATH%

@rem Should we munge this level ?
@if /i not %SOUNDLVL%x==x @if /i not %SOUNDLVL%x==%8x @goto exit

@goto nodebug
@echo Munge output directory      = %MUNGEDIR%
@echo Source directory            = %SOURCEDIR%
@echo Platform override directory = %PLATFORMDIR%
@echo Selected platform           = %4
@echo Munge logs directory        = %LOGDIR%
@echo Level file output directory = %LEVELDIR%
@echo Final req file              = %LEVELFILEREQ%
@echo Output level file           = %LEVELFILELVL%
@echo Additional stream options   = %STREAMOPT%
@pause
:nodebug

@if EXIST %MUNGEDIR% goto skipcreatemungedir
@mkdir %MUNGEDIR%
:skipcreatemungedir

@cd %SOURCEDIR%

@rem Munge configuration files
@rem *.snd - sound library
@rem *.mus - dynamic music configuration
@rem *.ffx - foley effects
@rem *.tsr - sound regions
@configmunge -sourcedir %SOURCEDIR% -platformdir %PLATFORMDIR% -platform %4 -inputfile *.snd *.mus *.ffx *.tsr -outputdir %MUNGEDIR%\ -hashstrings %CHECKDATE% -continue

@if %SOUNDLOG%x==1x ( @set SOUNDOPT=-verbose & @set SOUNDLOGOUT=%LOGDIR%\SoundBankLog.txt ) else ( @set SOUNDOPT= & @set SOUNDLOGOUT=NUL )

@rem Munge sound banks
@for /R %%A in (*.sfx) do @echo Munging %%~nA%%~xA & @soundflmunge -platform %4 -banklistinput %%A -bankoutput %MUNGEDIR%\ %CHECKDATE% -resample -checkid noabort %SOUNDOPT% %BANKOPT% 2>>%LOGDIR%\MungeLog.txt 1>>%SOUNDLOGOUT%
@for /R %%A in (*.asfx) do @echo Munging %%~nA%%~xA & @soundflmunge -platform %4 -banklistinput %%A -bankoutput %MUNGEDIR%\ %CHECKDATE% -resample -checkid noabort %SOUNDOPT% 2>>%LOGDIR%\MungeLog.txt 1>>%SOUNDLOGOUT%


@rem Munge streams

@rem Localization
@rem Setup the extension of localized stream files (if it's english we'll just use the default extension)
@set LANGVERSION=
@for /F %%A in (%FRONTLINE_LANGVERSION%) do @set LANGVERSION=%%~A
@if /i %LANGVERSION%x==Englishx ( @set LOCALIZEEXT= ) else ( @set LOCALIZEEXT=stm_%LANGVERSION% )

@rem Munge localized stream files
@if /i not %LANGVERSION%x==Englishx @for /R %%A in (*.%LOCALIZEEXT%) do @echo Munging %%~nA%%~xA & @soundflmunge -platform %4 -banklistinput %%A -bankoutput %MUNGEDIR%\%%~nA.str -stream %CHECKDATE% -resample -checkid noabort %SOUNDOPT% %STREAMOPT% 2>>%LOGDIR%\MungeLog.txt 1>>%SOUNDLOGOUT%

@set MUNGE2SUBSTREAMS=0
@if /i %4==xbox @set MUNGE2SUBSTREAMS=1
@if /i %4==pc   @set MUNGE2SUBSTREAMS=1

@rem Build up a list of 1 substream streams to munge, 
@rem Filtering the localize streams and if on xbox 4 channel streams 
@set MUNGESUBSTREAM1=
@for /R %%A in (*.stm) do @if /i %%~xA==.stm ( @if not EXIST %%~dA%%~pA%%~nA.%LOCALIZEEXT% ( @if /i %MUNGE2SUBSTREAMS%==1 ( @if not EXIST %%~dA%%~pA%%~nA.st4 @set MUNGESUBSTREAM1=!MUNGESUBSTREAM1! %%A ) else ( @set MUNGESUBSTREAM1=!MUNGESUBSTREAM1! %%A ) ) )

@rem Munge 1 substream streams
@for %%A in (%MUNGESUBSTREAM1%) do @echo Munging %%~nA%%~xA & @soundflmunge -platform %4 -banklistinput %%A -bankoutput %MUNGEDIR%\ -stream %CHECKDATE% -resample -checkid noabort %SOUNDOPT% %STREAMOPT% 2>>%LOGDIR%\MungeLog.txt 1>>%SOUNDLOGOUT%

@rem Munge 2 substream streams
@if %MUNGE2SUBSTREAMS%==1 @for /R %%A in (*.st4) do @echo Munging %%~nA%%~xA & @soundflmunge -platform %4 -banklistinput %%A -bankoutput %MUNGEDIR%\ -stream %CHECKDATE% -resample -checkid noabort %SOUNDOPT% %STREAMOPT% -substream 2 2>>%LOGDIR%\MungeLog.txt 1>>%SOUNDLOGOUT%

@rem Build level files
@if EXIST %LEVELDIR% goto skipcreateleveldir
@mkdir %LEVELDIR%
:skipcreateleveldir

@if %SOUNDNOLVL%x==1x @goto exit

@rem build up a list of include directories for levelpack
@for /F %%A in ('dir /AD /S /B %STARTDIR%\..\Data\%7\munged') do @set LEVELSRCDIR=!LEVELSRCDIR! -inputdir %%A\
@for /F %%A in ('dir /AD /S /B %STARTDIR%\%7\munged') do @set LEVELSRCDIR=!LEVELSRCDIR! -inputdir %%A\

@for /R %%A in (*.req) do @if /i not %%A==%SOURCEDIR%\%LEVELFILEREQ% @levelpack -sourcedir %SOURCEDIR% -platformdir %PLATFORMDIR% -platform %4 %LEVELSRCDIR% -outputdir %MUNGEDIR%\ -inputfile %%~nA%%~xA -continue %CHECKDATE%

@if EXIST %LEVELFILEREQ% @levelpack -sourcedir %SOURCEDIR% -platformdir %PLATFORMDIR% -platform %4 %LEVELSRCDIR% -outputdir %LEVELDIR%\ -inputfile %LEVELFILEREQ% -continue %CHECKDATE%

@goto exit

:nomungedir
@echo Munge directory must be specified as the first argument
@goto exit
:nosourcedir
@echo Source data directory must be specified as the second argument
@goto exit
:nooverridedir
@echo Platform specific source data directory must be specified as the third argument
@goto exit
:noplatform
@echo Platform must be specified as the fourth argument
@goto exit
:nomungelogdir
@echo Munge log directory must be specified as the fifth argument
@goto exit
:noleveldir
@echo Level output directory must be specified as the sixth argument
@goto exit
:nolevelsrcdir
@echo Level source direct must be specified as the seventh argument
@goto exit
:nolevelfile
@echo Final output level file must be specified as the eighth argument
@goto exit
:exit
@endlocal
@cd %STARTDIR%