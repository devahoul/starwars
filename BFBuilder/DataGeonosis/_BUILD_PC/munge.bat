@if "%1" == "" (
	@set FRONTLINE_LANGVERSION="ENGLISH"
) else (
	@set FRONTLINE_LANGVERSION=%1
)

echo %FRONTLINE_LANGVERSION%

del Mungelog.txt

@IF %FRONTLINE_LANGVERSION%=="English"    SET FRONTLINE_LANGDIR=ENG
@IF %FRONTLINE_LANGVERSION%=="ENGLISH"    SET FRONTLINE_LANGDIR=ENG
@IF %FRONTLINE_LANGVERSION%=="UK"    	  SET FRONTLINE_LANGDIR=UK_
@IF %FRONTLINE_LANGVERSION%=="FRENCH"     SET FRONTLINE_LANGDIR=FRE
@IF %FRONTLINE_LANGVERSION%=="GERMAN"     SET FRONTLINE_LANGDIR=GER
@IF %FRONTLINE_LANGVERSION%=="JAPANESE"   SET FRONTLINE_LANGDIR=JAP
@IF %FRONTLINE_LANGVERSION%=="ITALIAN"   SET FRONTLINE_LANGDIR=ITA
@IF %FRONTLINE_LANGVERSION%=="SPANISH"   SET FRONTLINE_LANGDIR=SPA

@setlocal
@set PATH="%CD%"\..\..\ToolsFL\Bin;%PATH%

@if %FRONTLINE_LANGVERSION%=="ITALIAN" (
 @endlocal
 @set FRONTLINE_LANGVERSION="ITALIAN"
 @set FRONTLINE_LANGDIR=ITA
 @set MUNGE_PLATFORM_DIR_STR=_source_pc
 @set MUNGE_PLATFORM_OVERRIDE_STR=_SOURCE_PC_ITALIAN
 @setlocal
 @cd Common
 @call clean.bat
 @set PATH="%CD%"\..\..\ToolsFL\Bin;%PATH%
 @call munge.bat
 @cd ..\Shell
 @call clean.bat
 @call munge.bat

 @cd ..

) else (
 @cd Common
 @call munge.bat
 @cd ..

 @cd Shell
 @call munge.bat
 @cd ..
)

cd addme
 @call munge.bat
cd ..

cd Sides
REM STARTSIDES
REM cd GAM
REM   @call munge.bat
REM cd ..
REM ENDSIDES
cd ..


cd Worlds
 cd Geonosis
  @call munge.bat
 cd ..
cd ..

endlocal

cd Sound
@call munge.bat
cd ..

set PACKAGE_NUM=Geonosis

set FolderExt=
if NOT %FRONTLINE_LANGVERSION%=="ENGLISH" (
	set FolderExt=%FRONTLINE_LANGDIR%
)

xcopy /S /Y /D ..\_lvl_pc\*.lvl ..\..\AddOn%FolderExt%\%PACKAGE_NUM%\Data\_lvl_pc\
xcopy /S /Y /D ..\_lvl_pc\*.mvs ..\..\AddOn%FolderExt%\%PACKAGE_NUM%\Data\_lvl_pc\
xcopy /Y /D addme\munged\addme.script ..\..\AddOn%FolderExt%\%PACKAGE_NUM%\

