@rem
@echo off


REM Clears the Windows update cache

net stop wuauserv
CD %Windir%
CD SoftwareDistribution
DEL /F /S /Q Download
net start wuauserv

