cd _build_pc
 @call munge.bat
cd ..

if EXIST MungeLog.txt Notepad.exe Mungelog.txt

Echo Done Munging, Potential errors can be found in Mungelog.txt
PAUSE