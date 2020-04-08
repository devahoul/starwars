@REM copy common binary format data from source root \Common

@if /i %FRONTLINE_LANGVERSION%x==Japanesex ( @set CORE=core-japanese.req ) else ( @set CORE=core.req )

copy ..\..\..\Data\Common\munged\*.* munged\

:: // Merge the three files (two main files, one new file)
set InputDIr1=..\..\..\Data\_SOURCE_PC\Common\Localize
set InputDIr2=..\..\_SOURCE_PC\Common\Localize
set InputDir3=..\..\..\Data\Localize

set MungeTemp=MungeTemp
set MungeTemp2=MungeTemp2
call ..\..\..\Data\MergeLocalize.bat %InputDIr1%  %InputDIr2%  %MungeTemp%
call ..\..\..\Data\MergeLocalize.bat %MungeTemp%  %InputDIr3%  %MungeTemp2%

:: // Perform Munging
localizemunge -sourcedir %MungeTemp2% -platform pc -inputfile *.cfg -outputdir munged\ -checkdate -continue

:: // Delete Merge Temp Dir
del /q %MungeTemp%\*.*
rmdir %MungeTemp%
del /q %MungeTemp2%\*.*
rmdir %MungeTemp2%

scriptmunge -sourcedir ..\..\Common -platformdir ..\..\_source_pc\Common -platform pc -inputfile !*.lua -outputdir munged\ -checkdate -continue

levelpack -sourcedir ..\..\Common -platformdir ..\..\_source_pc\Common -platform pc -inputdir munged\ -outputdir munged\ -inputfile MISSION\*.req -checkdate
levelpack -sourcedir ..\..\Common -platformdir ..\..\_source_pc\Common -platform pc -inputdir munged\ -outputdir ..\..\_LVL_PC\ -inputfile MISSION.req -checkdate
levelpack -sourcedir ..\..\Common -platformdir ..\..\_source_pc\Common -platform pc -inputdir munged\ -outputdir ..\..\_LVL_PC\ -inputfile %CORE% -checkdate
