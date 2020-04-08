@if %1x==x goto noplatform
@if /i %1==pc set BANKOPT=-template
@set PLATFORM=%1
@rem Munge world specific sound data

@call soundmungedir _BUILD_%PLATFORM%\sound\worlds\BespinPlat sound\worlds\BespinPlat _SOURCE_%PLATFORM%\sound\worlds\BespinPlat %PLATFORM% . _LVL_%PLATFORM%\sound _BUILD_%PLATFORM%\sound BespinPlat

@goto exit
:noplatform
@echo Platform must be specified as the first argument
:exit
