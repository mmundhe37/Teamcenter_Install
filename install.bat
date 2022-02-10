@echo off
echo Check Windows Administrator privileges...
cacls %windir%\system64\config\system >nul 2>&1
if ERRORLEVEL 1 (
   echo ==============================================================
   echo     ERROR: Did not use 'Run As Administrator' RMB option!
   echo --------------------------------------------------------------
   goto abort
)
else 

rem Install Jdk 8 and Jre 8
rem call C:\Users\mmundhe\Downloads\JavaSetup8u321.exe /s ADDLOCAL="ToolsFeature,SourceFeature,PublicjreFeature" INSTALLDIR=C:\Program Files\Java\jdk1.8.0_321 /INSTALLDIRPUBJRE=C:\Program Files\Java\jre1.8.0_321
rem set JAVA_HOME=C:\Program Files\Java\jdk1.8.0_321
rem set JRE64_HOME=C:\Program Files\Java\jre1.8.0_321
rem SET PATH=%PATH%;C:\Program Files\Java\jdk1.8.0_181\bin



:doit
rem Teamcenter Install
call "C:\Users\mmundhe\Downloads\Tc13.0.0.0_wntx64\tem.bat -s C:\silent.xml"
echo Syslog Path: %TC_TMP_DIR%
set TC_ROOT=C:\Siemens\Teamcenter13\TR
set TC_DATA=C:\Siemens\Teamcenter13\TD

:end
endlocal
pause
exit