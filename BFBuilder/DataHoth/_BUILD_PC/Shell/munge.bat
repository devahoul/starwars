configmunge -sourcedir ..\..\Shell\movies -platformdir ..\..\_SOURCE_PC\Shell\movies -platform pc -inputfile *.mcfg -outputdir munged\ -hashstrings -checkdate -continue
for %%A in (..\..\_SOURCE_PC\Shell\movies\*.mlst) do moviemunge -input %%A -output ..\..\_LVL_PC\movies\%%~nA.mvs -checkdate

levelpack -sourcedir ..\..\Shell -platform pc -inputdir munged\ -outputdir ..\..\_LVL_PC\SHELL\%FRONTLINE_LANGDIR%\ -inputfile shell.req -checkdate
