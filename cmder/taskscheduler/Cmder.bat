@echo off
SET CMDER_ROOT=%~dp0..

:: Remove Trailing '\'
@if "%CMDER_ROOT:~-1%" == "\" SET CMDER_ROOT=%CMDER_ROOT:~0,-1%

if exist "%~1" (
    start "" "%CMDER_ROOT%\vendor\conemu-maximus5\ConEmu.exe" /MIN /Icon "%CMDER_ROOT%\icons\cmder.ico" /Title Cmder /LoadCfgFile "%~1"
) else (
    start "" "%CMDER_ROOT%\vendor\conemu-maximus5\ConEmu.exe" /MIN /Icon "%CMDER_ROOT%\icons\cmder.ico" /Title Cmder /LoadCfgFile "%CMDER_ROOT%\config\user-ConEmu.xml"
)
