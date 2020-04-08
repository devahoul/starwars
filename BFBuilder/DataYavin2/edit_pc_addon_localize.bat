copy _SOURCE_PC\Common\Localize\english.cfg english.cfg
copy _SOURCE_PC\Common\Localize\english.cfg french.cfg
copy _SOURCE_PC\Common\Localize\english.cfg german.cfg
copy _SOURCE_PC\Common\Localize\english.cfg italian.cfg
copy _SOURCE_PC\Common\Localize\english.cfg japanese.cfg
copy _SOURCE_PC\Common\Localize\english.cfg spanish.cfg
copy _SOURCE_PC\Common\Localize\english.cfg uk_english.cfg
copy _SOURCE_PC\Common\Localize\english.cfg Comments.cfg
cd _SOURCE_PC\Common\Localize
attrib -r english.cfg
attrib -r french.cfg
attrib -r german.cfg
attrib -r italian.cfg
attrib -r japanese.cfg
attrib -r spanish.cfg
attrib -r uk_english.cfg
attrib -r Comments.cfg
cd ..
cd ..
cd ..
..\toolsfl\bin\MultiLanguageTool.exe
copy english.cfg _SOURCE_PC\Common\Localize\english.cfg
del english.cfg
copy french.cfg _SOURCE_PC\Common\Localize\french.cfg
del french.cfg
copy german.cfg _SOURCE_PC\Common\Localize\german.cfg
del german.cfg
copy italian.cfg _SOURCE_PC\Common\Localize\italian.cfg
del italian.cfg
copy japanese.cfg _SOURCE_PC\Common\Localize\japanese.cfg
del japanese.cfg
copy spanish.cfg _SOURCE_PC\Common\Localize\spanish.cfg
del spanish.cfg
copy uk_english.cfg _SOURCE_PC\Common\Localize\uk_english.cfg
del uk_english.cfg
copy Comments.cfg _SOURCE_PC\Common\Localize\Comments.cfg
del Comments.cfg
