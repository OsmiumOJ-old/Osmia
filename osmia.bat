@echo off
set progp=C:\ProgramData\Microsoft\Windows\Start Menu\Programs
if "%1" == "" (
    type pfi\noargs.pfi
    goto end
) else if "%1" == "--help" ( goto hlp
) else if "%1" == "-h" ( goto hlp
) else if "%1" == "/h" ( goto hlp
) else if "%1" == "-?" ( goto hlp
) else if "%1" == "/?" ( goto hlp
) else if "%1" == "--version" ( goto vers
) else if "%1" == "-v" ( goto vers
) else if "%1" == "/v" ( goto vers
) else ( goto err )
:hlp
if "%2" == "" (
    type .\pfi\help.pfi
    goto end
) else ( goto err )
:vers
if "%2" == "" (
    type .\pfi\version.pfi
    goto end
) else ( goto err )
:err
echo Error.
:end
pause