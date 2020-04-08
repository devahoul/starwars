@echo off

:: //-----------------------------------------------------------
:: // Create some cleaner variable names
:: //-----------------------------------------------------------

if "%3"=="" (
	ECHO.
	Echo Format: .\MergeLocalize.Bat InputDir1 inputDir2 TempDir
	ECHO.
	GOTO DONE
)

set Source1Dir=%1
set Source2Dir=%2
set TempDir=%3


:: //-----------------------------------------------------------
:: //	Copy and merge the two text files for each language
:: //-----------------------------------------------------------

if NOT EXIST %TempDir% mkdir %TempDir%

setlocal ENABLEDELAYEDEXPANSION

FOR %%i IN (%Source1Dir%\*.cfg %Source2Dir%\*.cfg) DO (
	echo Merging %%i...
	more %%i >>  %TempDir%\%%~ni%%~xi
)

ECHO.

:DONE