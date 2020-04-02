@rem
@echo off

REM Force admin

net session >nul
if %errorlevel% neq 0 goto elevate nul
goto :start

:elevate
cd/d %~dp0
mshta "javascript: var shell = new ActiveXObject('shell.application'); shell.ShellExecute('%~nx0', '', '', 'runas', 1);close();" >nul
exit

:start
cd C:\oecIT\Maintenance\


echo.
echo.
echo.
ECHO              #######                        #######                      #######
ECHO         ##################            ##################           #############
ECHO      #######################       #######################       ###############
ECHO     ##########      #########     ########         ########    ###########     #
ECHO    ########           ########   ########           ########  #########
ECHO    ########            ########  ###########################  ########
ECHO    ########            ########  ###########################  ########
ECHO    #########          ########   ########                      ########
ECHO     ###########   ###########     #########        #####        ###########   ##
ECHO       ######################        ######################       ###############
ECHO         #################              #################            ############
ECHO                ###                            ###                          ###
echo.
echo.
echo    *****************************************************************************
echo    **************    S C H E D U L E D   M A I N T E N A N C E    **************
echo    *****************************************************************************
echo    *****************************************************************************
echo    ****************    Please save all work and close out of    ****************
echo    ***************************    open programs.   *****************************
echo    *****************************************************************************
echo.
echo.
echo.


PING -n 21 127.0.0.1>nul


REM log and call RecycleClean

echo.
echo Clearing out Recycle Bin...
(
echo.
echo ---------
echo %date%
echo %time%
call RecycleClean.bat
) >> C:\oecIT\Logs\RecycleClearLog.txt
PING -n 3 127.0.0.1>nul


REM log and call TempClear

echo.
echo Clearing out temp files...
(
echo.
echo ---------
echo %date%
echo %time%
call TempClear.bat
) >> C:\oecIT\Logs\TempClearLog.txt
PING -n 3 127.0.0.1>nul


REM log and call WinCacheClear

echo.
echo Resetting Windows Update Cache...
(
echo.
echo ---------
echo %date%
echo %time%
call WinCacheClear.bat
) >> C:\oecIT\Logs\CacheClearLog.txt
PING -n 3 127.0.0.1>nul


REM log and call NetRes

echo.
echo Resetting Network Settings...
(
echo.
echo ---------
echo %date%
echo %time%
call NetRes.bat
) >> C:\oecIT\Logs\NetResLog.txt
PING -n 3 127.0.0.1>nul



:EOF
exit /b %1