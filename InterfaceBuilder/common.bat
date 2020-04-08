cd C:\LucasArts\REPACKAGE\LucasArts\InterfaceBuilder
@del /q _BUILD_PC\Common\munged\*.*
@del /q Custom\Common\munged\*.*

@cd ToolsFL\Bin

modelmunge -sourcedir ..\..\Custom\Common -platform pc -inputfile !*.msh -outputdir ..\..\Custom\Common\munged\ -maxbones 16 -continue -righthanded
texturemunge -sourcedir ..\..\Custom\Common -platform pc -inputfile !*.tga !*.pic -outputdir ..\..\Custom\Common\munged\ -continue
configmunge -sourcedir ..\..\Custom\Common -platform pc -inputfile !*.fx -outputdir ..\..\Custom\Common\munged\ -continue
odfmunge -sourcedir ..\..\Custom\Common -platform pc -inputfile !*.odf -outputdir ..\..\Custom\Common\munged\ -continue

xcopy /y ..\..\Data\Common\common.req ..\..\_BUILD_PC\Common\munged\
xcopy /y ..\..\Data\Common\munged\*.* ..\..\_BUILD_PC\Common\munged\
xcopy /y ..\..\Custom\Common\munged\*.* ..\..\_BUILD_PC\Common\munged\

levelpack -sourcedir ..\..\_BUILD_PC\Common\munged -platform pc -inputdir ..\..\_BUILD_PC\Common\munged\ -outputdir ..\..\_LVL_PC\Common\ENG\ -inputfile common.req -continue

@move /y modelmunge.log ..\..\_BUILD_PC\Common\
@move /y texturemunge.log ..\..\_BUILD_PC\Common\
@move /y configmunge.log ..\..\_BUILD_PC\Common\
@move /y odfmunge.log ..\..\_BUILD_PC\Common\
@move /y levelpack.log ..\..\_BUILD_PC\Common\
@echo Done!