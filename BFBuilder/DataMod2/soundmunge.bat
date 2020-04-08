@if %1x==x goto noplatform
@if /i %1==pc set BANKOPT=-template
@set PLATFORM=%1
@rem Munge world specific sound data
REM Modder Change the next the next two lines to match new level
@call soundmungedir _BUILD_%PLATFORM%\sound\worlds\mod sound\worlds\mod _SOURCE_%PLATFORM%\sound\worlds\mod %PLATFORM% . _LVL_%PLATFORM%\sound _BUILD_%PLATFORM%\sound mod

@goto exit
:noplatform
@echo Platform must be specified as the first argument
:exit