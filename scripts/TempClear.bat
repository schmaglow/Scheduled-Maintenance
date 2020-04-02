@rem
@echo off


REM remove files from path that are at least 7 days old

FORFILES /p %temp% /m *.* /s /d -7 /c "cmd /c del @path /a /s /q /f"


REM remove files from path that are at least 7 days old

FORFILES /p %windir%/temp /m *.* /s /d -7 /c "cmd /c del @path /a /s /q /f"

