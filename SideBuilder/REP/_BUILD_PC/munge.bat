del /q Sides\%1\munged\*.*
@setlocal
@set PATH="%CD%"\..\ToolsFL\Bin;%PATH%
@REM copy common binary format data from source root \Common
copy ..\Sides\%1\munged\*.*  Sides\%1\munged\

odfmunge -sourcedir ..\Sides\%1 -platform pc -inputfile !*.odf -outputdir Sides\%1\munged\ -continue
modelmunge -sourcedir ..\Sides\%1 -platform pc -inputfile !*.msh -outputdir Sides\%1\munged\ -maxbones 16 -keep collision -continue -righthanded
texturemunge -sourcedir ..\Sides\%1 -platform pc -inputfile !*.tga !*.pic -outputdir Sides\%1\munged\ -continue
configmunge -sourcedir ..\Sides\%1 -platform pc -inputfile effects\*.fx -outputdir Sides\%1\munged\ -continue

levelpack -sourcedir ..\Sides\%1 -platform pc -inputdir Sides\%1\munged\ -outputdir Sides\%1\munged\ -inputfile REQ\*.req -continue
levelpack -sourcedir ..\Sides\%1 -platform pc -inputdir Sides\%1\munged\ -outputdir ..\_LVL_PC\SIDE\ -inputfile %1.req -continue

@endlocal
