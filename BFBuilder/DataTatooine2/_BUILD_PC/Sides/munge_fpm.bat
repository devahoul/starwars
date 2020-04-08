@if "%1" == "" goto ERROR

for /D %%A in (..\..\..\Sides\%1\req\FPM\*) do levelpack -sourcedir ..\..\..\Sides\%1 -platformdir ..\..\..\_SOURCE_PC\Sides\%1 -platform pc -inputdir munged\ -outputdir ..\..\..\_LVL_PC\FPM\%%~nxA\ -inputfile %%A\*.req -continue -checkdate

@goto END
:ERROR
@echo Usage: ..\munge_side [sidename]
:END
