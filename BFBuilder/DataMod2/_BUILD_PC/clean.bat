del/s/q ..\_lvl_PC\*.lvl
del/s/q *.log
cd Common
 @call clean.bat
cd ..
cd Shell
 @call clean.bat
cd ..
cd addme
 @call clean.bat
cd ..

cd Sides
cd GAM
 @call clean.bat
cd ..
cd ..

cd Sound
 @call clean.bat
cd ..

REM Modders Change this to point to new world
cd Worlds
 cd MOD
  @call clean.bat
 cd ..
cd ..
