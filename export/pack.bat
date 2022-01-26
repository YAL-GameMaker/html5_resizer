@echo off

if not exist "html5_resizer-for-GMS1" mkdir "html5_resizer-for-GMS1"
cmd /C copyre ..\html5_resizer.gmx\extensions\html5_resizer.extension.gmx html5_resizer-for-GMS1\html5_resizer.extension.gmx
cmd /C copyre ..\html5_resizer.gmx\extensions\html5_resizer html5_resizer-for-GMS1\html5_resizer
cmd /C copyre ..\html5_resizer.gmx\datafiles\html5_resizer.html html5_resizer-for-GMS1\html5_resizer\Assets\datafiles\html5_resizer.html
cd html5_resizer-for-GMS1
cmd /C 7z a html5_resizer-for-GMS1.7z *
move /Y html5_resizer-for-GMS1.7z ../html5_resizer-for-GMS1.gmez
cd ..

if not exist "html5_resizer-for-GMS2\extensions" mkdir "html5_resizer-for-GMS2\extensions"
if not exist "html5_resizer-for-GMS2\datafiles" mkdir "html5_resizer-for-GMS2\datafiles"
if not exist "html5_resizer-for-GMS2\datafiles_yy" mkdir "html5_resizer-for-GMS2\datafiles_yy"
cmd /C copyre ..\html5_resizer_yy\extensions\html5_resizer html5_resizer-for-GMS2\extensions\html5_resizer
cmd /C copyre ..\html5_resizer_yy\datafiles\html5_resizer.html html5_resizer-for-GMS2\datafiles\html5_resizer.html
cmd /C copyre ..\html5_resizer_yy\datafiles_yy\html5_resizer.html.yy html5_resizer-for-GMS2\datafiles_yy\html5_resizer.html.yy
cd html5_resizer-for-GMS2
cmd /C 7z a html5_resizer-for-GMS2.zip *
move /Y html5_resizer-for-GMS2.zip ../html5_resizer-for-GMS2.yymp
cd ..

if not exist "html5_resizer-for-GMS2.3+\extensions" mkdir "html5_resizer-for-GMS2.3+\extensions"
if not exist "html5_resizer-for-GMS2.3+\datafiles" mkdir "html5_resizer-for-GMS2.3+\datafiles"
cmd /C copyre ..\html5_resizer_23\extensions\html5_resizer html5_resizer-for-GMS2.3+\extensions\html5_resizer
cmd /C copyre ..\html5_resizer_23\datafiles\html5_resizer.html html5_resizer-for-GMS2.3+\datafiles\html5_resizer.html
cd html5_resizer-for-GMS2.3+
cmd /C 7z a html5_resizer-for-GMS2.3+.zip *
move /Y html5_resizer-for-GMS2.3+.zip ../html5_resizer-for-GMS2.3+.yymps
cd ..

pause