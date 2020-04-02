@rem
@echo off


REM permanently delete all files from the recycle bin

FORFILES /p C:\$RECYCLE.BIN /m *.* /s /d -0 /c "cmd /c del @path /a /s /q /f"


