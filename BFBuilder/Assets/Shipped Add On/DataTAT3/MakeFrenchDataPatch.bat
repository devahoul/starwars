set FRONTLINE_DIR=F:\FrontlinePC\DataTat3

:: %LANG%
setlocal enabledelayedexpansion
set LANG=FRENCH
set MUNGE_PLATFORM_DIR_STR=_source_pc
set MUNGE_PLATFORM_OVERRIDE_STR=_SOURCE_PC_%LANG%

cd %FRONTLINE_DIR%\_BUILD_PC\
call Clean.bat
cd Common
call Clean.bat
cd ..
cd Shell
call Clean.bat
cd..
call munge.bat "%LANG%"
