@echo off


cd C:\oecIT\Maintenance


echo.
echo.
echo.
echo *****************************************************************
echo ********    S C H E D U L E D   M A I N T E N A N C E    ********
echo *****************************************************************
echo *****************************************************************
echo **********    Please save all work and close out of    **********
echo *********************    open programs.   ***********************
echo *****************************************************************
echo.
echo.
echo.
echo.
echo.
echo.


::timeout /t 30
PING -n 21 127.0.0.1>nul



 :: log and call DeleteScript

:: echo --------- >> C:\oecIT\Logs\FileClearLog.txt
:: echo %date% >> C:\oecIT\Logs\FileClearLog.txt
:: echo %TIME% >> C:\oecIT\Logs\FileClearLog.txt
:: call DeleteScript.bat >> C:\oecIT\Logs\FileClearLog.txt


 :: log and call RecycleClean

(
echo.
echo --------- 
echo %date% 
echo %time% 
call RecycleClean.bat
) >> C:\oecIT\Logs\RecycleClearLog.txt

 :: log and call TempClear

(
echo.
echo --------- 
echo %date% 
echo %time% 
call TempClear.bat 
) >> C:\oecIT\Logs\TempClearLog.txt

 :: log and call NetRes

(
echo.
echo ---------
echo %date%
echo %time%
call NetRes
) >> C:\oecIT\Logs\NetRes.txt