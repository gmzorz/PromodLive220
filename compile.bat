@echo off
:: EZ compile script, just add folders in mod folder and they will automatically be copied to the ../raw dir
:: compiled into newly generated mod folder, iwd files are copied over automatically 
:: additional shortcut batch file has been added to the output dir, run and launch the mod in two clicks!
:: http://gmzorz.com/
for /f "delims=" %%A in ('cd') do (
	set fn=%%~nxA
)
set moddir=%fn%_compiled
if exist ..\%moddir% ( del ..\%moddir%\mod.ff & goto f_ ) else ( mkdir ..\%moddir% & goto f_ )
:f_
for /f "usebackq tokens=*" %%a in (`dir /b /a:d`) do (
	xcopy "%%a" "..\..\raw\%%a" /SY
)
for %%a in (*.iwd) do (
	xcopy %%a ..\%moddir% /SY
)
echo for /f "delims=" %%%%A in ('cd') do ( > run.txt
echo set fn=%%%%~nxA >> run.txt
echo ) >> run.txt
echo cd ../.. >> run.txt
echo iw3mp +set fs_game mods/%%fn%% +set r_mode "1280x720" +set r_fullscreen "0" +set scr_war_timelimit "0" +set g_gametype "war" >> run.txt
copy run.txt ..\%moddir%\launch.bat & del run.txt
copy /Y mod.csv ..\..\zone_source
cd ..\..\bin
linker_pc.exe -language english -compress -cleanup mod
cd ..\Mods\%moddir%
copy ..\..\zone\english\mod.ff
start "" ..\%moddir%
