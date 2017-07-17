@echo off
set path="C:\SOFT\ARC\WinRAR";%path%
set /P c=Are you sure you want to continue[Y/N]?
if /I "%c%" EQU "Y" goto :action
if /I "%c%" EQU "N" goto :exit
goto :choice

:action
for /D %%f in ("*") do (
   rar  m -m5 -ep1 -r  "%%~nxf.rar" "%%f/*"
   REM rd /q /s "%%f"
   echo "delete %%f"
)
exit
 
:exit
exit