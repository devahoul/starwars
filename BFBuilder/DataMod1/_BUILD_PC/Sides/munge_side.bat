rem @if "%1" == "" goto ERROR

@REM copy common binary format data from source root \Common
copy ..\..\..\Sides\%1\munged\*.*  munged\

del Mungelog.txt
odfmunge -sourcedir ..\..\..\Sides\%1 -platformdir ..\..\..\_source_pc\Sides\%1 -platform pc -inputfile !*.odf -outputdir munged\ -checkdate -continue
modelmunge -sourcedir ..\..\..\Sides\%1 -platformdir ..\..\..\_source_pc\Sides\%1 -platform pc -inputfile !*.msh -outputdir munged\ -checkdate -maxbones 16 -keep collision -continue -righthanded
texturemunge -sourcedir ..\..\..\Sides\%1 -platformdir ..\..\..\_source_pc\Sides\%1 -platform pc -inputfile !*.tga !*.pic -outputdir munged\ -checkdate -continue
configmunge -sourcedir ..\..\..\Sides\%1 -platformdir ..\..\..\_source_pc\Sides\%1 -platform pc -inputfile effects\*.fx -outputdir munged\ -checkdate -continue

configmunge -sourcedir ..\..\..\Sides\%1\sound -platformdir ..\..\..\_SOURCE_pc\Sides\%1\sound -platform pc -inputfile *.snd *.mus -outputdir munged\ -hashstrings -checkdate -continue
if EXIST ..\..\..\Sides\%1\sound\%1_music.txt soundflmunge -platform pc -banklistinput ..\..\..\Sides\%1\sound\%1_music.txt -bankoutput .\munged\%1_music.str -checkid -checkdate -resample -stream  2>>..\..\..\MungeLog.txt
if EXIST ..\..\..\Sides\%1\sound\%1_voiceovers.txt soundflmunge -platform pc -banklistinput ..\..\..\Sides\%1\sound\%1_voiceovers.txt -bankoutput .\munged\%1_voiceovers.str -checkid -checkdate -resample -stream  2>>..\..\..\MungeLog.txt
if EXIST ..\..\..\Sides\%1\sound\%1_effects.txt soundflmunge -platform pc -banklistinput ..\..\..\Sides\%1\sound\%1_effects.txt -bankoutput .\munged\%1_effects.bnk -checkid -checkdate -resample -verbose 2>>..\..\..\MungeLog.txt 1>>..\..\..\SoundBankLog.txt
for %%A in (..\..\..\Sides\%1\sound\*.sfx) do soundflmunge -platform pc -banklistinput %%A -bankoutput .\munged\ -checkid -checkdate -resample -verbose 2>>..\..\..\MungeLog.txt 1>>..\..\..\SoundBankLog.txt
for %%A in (..\..\..\Sides\%1\sound\*.stm) do soundflmunge -platform pc -banklistinput %%A -bankoutput .\munged\ -stream -checkid -checkdate -resample -verbose 2>>..\..\..\MungeLog.txt 1>>..\..\..\SoundBankLog.txt

@REM for /D %%A in (..\..\..\Sides\%1\req\*) do levelpack -sourcedir ..\..\..\Sides\%1 -platformdir ..\..\..\_SOURCE_pc\Sides\%1 -platform pc -inputdir munged\ -outputdir ..\..\..\_LVL_PC\%%~nxA\ -inputfile %%A\*.req -continue -checkdate

levelpack -sourcedir ..\..\..\Sides\%1 -platformdir ..\..\..\_SOURCE_PC\Sides\%1 -platform pc -inputdir munged\ -outputdir munged\ -inputfile REQ\*.req -continue -checkdate
levelpack -sourcedir ..\..\..\Sides\%1 -platformdir ..\..\..\_SOURCE_PC\Sides\%1 -platform pc -inputdir munged\ -outputdir ..\..\..\_LVL_PC\SIDE\ -inputfile %1.req -continue -checkdate

@call ..\munge_fpm.bat %1

@goto END
:ERROR
@echo Usage: ..\munge_side [sidename]
:END
pause