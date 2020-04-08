@if "%1" == "" goto ERROR

del Mungelog.txt

copy ..\..\..\Worlds\%1\munged\*.* munged\

odfmunge -sourcedir ..\..\..\Worlds\%1 -platformdir ..\..\..\_source_pc\Worlds\%1 -platform pc -inputfile !*.odf -outputdir munged\ -checkdate -continue
modelmunge -sourcedir ..\..\..\Worlds\%1 -platformdir ..\..\..\_source_pc\Worlds\%1 -platform pc -inputfile !*.msh -outputdir munged\ -checkdate -maxbones 16 -keep collision -continue -righthanded
texturemunge -sourcedir ..\..\..\Worlds\%1 -platformdir ..\..\..\_source_pc\Worlds\%1 -platform pc -inputfile !*.tga !*.pic -outputdir munged\ %~3 -format compressed -checkdate -continue
terrainmunge -sourcedir ..\..\..\Worlds\%1 -platformdir ..\..\..\_source_pc\Worlds\%1 -platform pc -inputfile !*.ter -outputdir munged\ -checkdate -continue
worldmunge -sourcedir ..\..\..\Worlds\%1 -platformdir ..\..\..\_source_pc\Worlds\%1 -platform pc -inputfile !*.wld -outputdir munged\ -checkdate -continue
pathmunge -sourcedir ..\..\..\Worlds\%1 -platformdir ..\..\..\_source_pc\Worlds\%1 -platform pc -inputfile !*.pth -outputdir munged\ -checkdate -continue
pathplanningmunge -sourcedir ..\..\..\Worlds\%1 -platformdir ..\..\..\_source_pc\Worlds\%1 -platform pc -inputfile !*.pln -outputdir munged\ -checkdate -continue

configmunge -sourcedir ..\..\..\Worlds\%1 -platformdir ..\..\..\_source_pc\Worlds\%1 -platform pc -inputfile !*.sky -outputdir munged\ -checkdate -chunkid sky
configmunge -sourcedir ..\..\..\Worlds\%1 -platformdir ..\..\..\_source_pc\Worlds\%1 -platform pc -inputfile !*.fx -outputdir munged\ -checkdate -chunkid fx -ext envfx
configmunge -sourcedir ..\..\..\Worlds\%1 -platformdir ..\..\..\_source_pc\Worlds\%1 -platform pc -inputfile !*.prp -outputdir munged\ -hashstrings -checkdate -chunkid prp -ext prop
configmunge -sourcedir ..\..\..\Worlds\%1 -platformdir ..\..\..\_source_pc\Worlds\%1 -platform pc -inputfile !*.bnd -outputdir munged\ -hashstrings -checkdate -chunkid bnd -ext boundary

texturemunge -sourcedir ..\..\..\Worlds\%1 -platformdir ..\..\..\_source_pc\Worlds\%1 -platform pc -inputfile effects\*.tga -outputdir munged\ -format compressed -checkdate 
configmunge -sourcedir ..\..\..\Worlds\%1 -platformdir ..\..\..\_source_pc\Worlds\%1 -platform pc -inputfile effects\*.fx -outputdir munged\ -checkdate -continue

configmunge -sourcedir ..\..\..\Worlds\%1\sound -platformdir ..\..\..\_SOURCE_pc\Worlds\%1\sound -platform pc -inputfile *.snd *.mus *.tsr -outputdir munged\ -hashstrings -checkdate -continue
if EXIST ..\..\..\Worlds\%1\sound\%1_amb.txt soundflmunge -platform pc -banklistinput ..\..\..\Worlds\%1\sound\%1_amb.txt -bankoutput .\munged\%1_amb.str -checkid -checkdate -resample -stream  2>>..\..\..\MungeLog.txt
for %%A in (..\..\..\Worlds\%1\sound\*.sfx) do soundflmunge -platform pc -banklistinput %%A -bankoutput .\munged\ -checkid -checkdate -resample -verbose 2>>..\..\..\MungeLog.txt 1>>..\..\..\SoundBankLog.txt
for %%A in (..\..\..\Worlds\%1\sound\*.stm) do soundflmunge -platform pc -banklistinput %%A -bankoutput .\munged\ -stream -checkid -checkdate -resample -verbose 2>>..\..\..\MungeLog.txt 1>>..\..\..\SoundBankLog.txt

levelpack -sourcedir ..\..\..\Worlds\%1 -platformdir ..\..\..\_source_pc\Worlds\%1 -platform pc -inputdir munged\ -outputdir ..\..\..\_LVL_PC\%2\ -inputfile *.req -continue -checkdate

@goto END
:ERROR
@echo Usage: munge_world [worldname]
:END
