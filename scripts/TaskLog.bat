@rem
@echo off


net session >nul
if %errorlevel% neq 0 goto elevate nul
goto :start

:elevate 
cd/d %~dp0
mshta "javascript: var shell = new ActiveXObject('shell.application'); shell.ShellExecute('%~nx0', '', '', 'runas', 1);close();" >nul
exit

:start


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


::timeout /t 30
PING -n 21 127.0.0.1>nul


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
