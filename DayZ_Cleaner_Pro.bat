@echo off
setlocal enabledelayedexpansion
title DayZ Cleaner Pro v3.0
mode con: cols=90 lines=38

:: ──────────────────────────────────────────────────────────────────────
::  Definir caracter ESC (ASCII 27) para codigos ANSI
:: ──────────────────────────────────────────────────────────────────────
for /f %%a in ('echo prompt $E^| cmd') do set "E=%%a"

:: Colores ANSI
set "RESET=!E![0m"
set "GREEN=!E![92m"
set "YELLOW=!E![93m"
set "CYAN=!E![96m"
set "RED=!E![91m"
set "GRAY=!E![90m"
set "BOLD=!E![1m"
set "BGREEN=!E![42m!E![30m"

:: Recopilar info del sistema
for /f "tokens=2 delims==" %%a in ('wmic os get Caption /value 2^>nul') do set "OS_NAME=%%a"
if "!OS_NAME!"=="" set "OS_NAME=Windows"

goto MENU

:: ══════════════════════════════════════════════════════════════════════
:MENU
chcp 65001 >nul
cls
echo.

echo  !GREEN!                                              !RESET!
echo  !GREEN!    ██████╗  █████╗ ██╗   ██╗███████╗         !RESET!
echo  !GREEN!    ██╔══██╗██╔══██╗╚██╗ ██╔╝╚══███╔╝         !RESET!
echo  !GREEN!    ██║  ██║███████║ ╚████╔╝   ███╔╝          !RESET!
echo  !GREEN!    ██║  ██║██╔══██║  ╚██╔╝   ███╔╝           !RESET!
echo  !GREEN!    ██████╔╝██║  ██║   ██║   ███████╗         !RESET!
echo  !GREEN!    ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝         !RESET!
echo  !RESET!          !YELLOW!CLEANER PRO  -  v3.0!RESET!

echo.
echo  !GRAY!^|!RESET!  !CYAN!Sistema:!RESET!  !OS_NAME!
echo  !GRAY!^|!RESET!  !CYAN!Ruta:!RESET!     %LOCALAPPDATA%\DayZ
echo  !GRAY!^|!RESET!  !CYAN!Fecha:!RESET!    %DATE%   !GRAY!^|!RESET!  !CYAN!Hora:!RESET!  %TIME:~0,8%
echo.
echo     !GREEN![ 1 ]!RESET! Limpieza Rapida !GRAY!(RPT + Crash + Scripts)!RESET!
echo     !GREEN![ 2 ]!RESET! Limpieza Profunda !GRAY!(Logs + Temp + Bak)!RESET!
echo     !GREEN![ 3 ]!RESET! Solo Reportes RPT !GRAY!(*.rpt)!RESET!
echo.
echo     !CYAN![ 4 ]!RESET! Ver Estadisticas !GRAY!(Contador)!RESET!
echo     !YELLOW![ 5 ]!RESET! Abrir Carpeta DayZ
echo     !RED![ 6 ]!RESET! Salir
echo.
echo  !GRAY!+-----------------------------------------------------------------------------+!RESET!
echo.
set /p "opt=  !GRAY!^>^>!RESET! Selecciona una opcion: "

if "!opt!"=="1" goto CLEAN_QUICK
if "!opt!"=="2" goto CLEAN_DEEP
if "!opt!"=="3" goto CLEAN_RPT
if "!opt!"=="4" goto STATS
if "!opt!"=="5" goto OPEN_FOLDER
if "!opt!"=="6" goto EXIT_SCRIPT
goto MENU

:: ══════════════════════════════════════════════════════════════════════
:CLEAN_QUICK
cls
call :HEADER "LIMPIEZA RAPIDA"
echo.
echo  !YELLOW!  * Objetivo: RPT - Crashdumps - Scripts de sesion!RESET!
echo.
call :CONFIRM
if errorlevel 1 goto MENU
echo.
call :STEP "Eliminando reportes .RPT"
del /f /q "%LOCALAPPDATA%\DayZ\*.rpt" 2>nul
call :OK

call :STEP "Purgando crashdumps"
del /f /q "%LOCALAPPDATA%\DayZ\crash_*" 2>nul
call :OK

call :STEP "Limpiando scripts de sesion"
del /f /q "%LOCALAPPDATA%\DayZ\script_*" 2>nul
call :OK

call :DONE
goto MENU

:: ══════════════════════════════════════════════════════════════════════
:CLEAN_DEEP
cls
call :HEADER "LIMPIEZA PROFUNDA"
echo.
echo  !YELLOW!  * Objetivo: RPT - Crashdumps - Scripts - Logs - Temp - Bak!RESET!
echo.
call :CONFIRM
if errorlevel 1 goto MENU
echo.
call :STEP "Eliminando reportes .RPT"
del /f /q "%LOCALAPPDATA%\DayZ\*.rpt" 2>nul
call :OK

call :STEP "Purgando crashdumps"
del /f /q "%LOCALAPPDATA%\DayZ\crash_*" 2>nul
call :OK

call :STEP "Limpiando scripts de sesion"
del /f /q "%LOCALAPPDATA%\DayZ\script_*" 2>nul
call :OK

call :STEP "Eliminando archivos de log"
del /f /q "%LOCALAPPDATA%\DayZ\*.log" 2>nul
call :OK

call :STEP "Limpiando archivos temporales"
del /f /q "%LOCALAPPDATA%\DayZ\*.tmp" 2>nul
call :OK

call :STEP "Eliminando backups antiguos"
del /f /q "%LOCALAPPDATA%\DayZ\*.bak" 2>nul
call :OK

call :DONE
goto MENU

:: ══════════════════════════════════════════════════════════════════════
:CLEAN_RPT
cls
call :HEADER "LIMPIEZA DE REPORTES RPT"
echo.
echo  !YELLOW!  * Objetivo: Unicamente archivos *.rpt!RESET!
echo.
call :CONFIRM
if errorlevel 1 goto MENU
echo.
call :STEP "Escaneando archivos .RPT"
call :OK
call :STEP "Eliminando reportes .RPT"
del /f /q "%LOCALAPPDATA%\DayZ\*.rpt" 2>nul
call :OK
call :DONE
goto MENU

:: ══════════════════════════════════════════════════════════════════════
:STATS
cls
call :HEADER "ESTADISTICAS DE ARCHIVOS"
echo.
echo  !CYAN!  Analizando: !RESET!%LOCALAPPDATA%\DayZ
echo.

set "DPATH=%LOCALAPPDATA%\DayZ"
if not exist "!DPATH!" (
    echo  !RED!  [ERROR]!RESET! La carpeta DayZ no existe en este equipo.
    echo.
    pause
    goto MENU
)

set cr=0 & set cc=0 & set cs=0 & set cl=0 & set ct=0
for %%f in ("!DPATH!\*.rpt")    do set /a cr+=1
for %%f in ("!DPATH!\crash_*")  do set /a cc+=1
for %%f in ("!DPATH!\script_*") do set /a cs+=1
for %%f in ("!DPATH!\*.log")    do set /a cl+=1
for %%f in ("!DPATH!\*.tmp")    do set /a ct+=1

echo  !GRAY!+------------------------------------------+!RESET!
echo  !GRAY!^|!RESET!  !CYAN!Tipo de archivo!RESET!          !YELLOW!Cantidad!RESET!        !GRAY!^|!RESET!
echo  !GRAY!+------------------------------------------+!RESET!
echo  !GRAY!^|!RESET!  Reportes  ^(.rpt^)         !GREEN!!cr! archivos!RESET!       !GRAY!^|!RESET!
echo  !GRAY!^|!RESET!  CrashDumps ^(crash_*^)     !GREEN!!cc! archivos!RESET!       !GRAY!^|!RESET!
echo  !GRAY!^|!RESET!  Scripts   ^(script_*^)     !GREEN!!cs! archivos!RESET!       !GRAY!^|!RESET!
echo  !GRAY!^|!RESET!  Logs      ^(.log^)         !GREEN!!cl! archivos!RESET!       !GRAY!^|!RESET!
echo  !GRAY!^|!RESET!  Temporales ^(.tmp^)        !GREEN!!ct! archivos!RESET!       !GRAY!^|!RESET!
echo  !GRAY!+------------------------------------------+!RESET!
echo.
echo  !GRAY!  Presiona cualquier tecla para volver...!RESET!
pause >nul
goto MENU

:: ══════════════════════════════════════════════════════════════════════
:OPEN_FOLDER
if exist "%LOCALAPPDATA%\DayZ" (
    explorer "%LOCALAPPDATA%\DayZ"
) else (
    cls
    call :HEADER "CARPETA NO ENCONTRADA"
    echo.
    echo  !RED!  [ERROR]!RESET! La carpeta DayZ no se encontro en: %LOCALAPPDATA%\DayZ
    echo.
    pause
)
goto MENU

:: ══════════════════════════════════════════════════════════════════════
:EXIT_SCRIPT
cls
echo.
echo  !GREEN!  +==========================================+!RESET!
echo  !GREEN!  ^|    Hasta pronto! Stay safe in DayZ!      ^|!RESET!
echo  !GREEN!  +==========================================+!RESET!
echo.
timeout /t 2 >nul
exit /b 0

:: ══════════════════════════════════════════════════════════════════════
::  SUBRUTINAS
:: ══════════════════════════════════════════════════════════════════════

:HEADER
echo  !GRAY!+===========================================================================+!RESET!
echo  !GRAY!^|!RESET!  !BOLD!!GREEN! # %~1!RESET!
echo  !GRAY!+===========================================================================+!RESET!
goto :eof

:CONFIRM
set /p "conf=  !GRAY!>>!RESET! ¿Deseas continuar? !GREEN!S!RESET!/!RED!N!RESET! !GRAY!>>!RESET! "
if /i "!conf!"=="N" (
    echo.
    echo  !RED!  Operacion cancelada.!RESET!
    timeout /t 1 >nul
    exit /b 1
)
if /i not "!conf!"=="S" goto CONFIRM
exit /b 0

:STEP
<nul set /p="  !CYAN!^>!RESET! %-42s" "!~1"
<nul set /p="  !CYAN!>!RESET! %~1  "
for /L %%i in (1,1,12) do (
    <nul set /p="!GREEN!#!RESET!"
    ping -n 1 127.0.0.1 >nul
)
goto :eof

:OK
echo   !GREEN![OK]!RESET!
goto :eof

:DONE
echo.
echo  !GRAY!  ---------------------------------------------------------------------------!RESET!
echo  !GREEN!  [COMPLETADO]!RESET!  Tu equipo esta listo para DayZ.
echo  !GRAY!  ---------------------------------------------------------------------------!RESET!
echo.
echo  !GRAY!  Presiona cualquier tecla para volver al menu...!RESET!
pause >nul
goto :eof
