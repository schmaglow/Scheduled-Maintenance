@rem
@echo off


REM Resets the network settings

netsh winsock reset
netsh int ip reset
ipconfig /release
ipconfig /renew
ipconfig /flushdns
shutdown /r /t 120
