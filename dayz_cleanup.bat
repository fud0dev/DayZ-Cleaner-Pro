@echo off
setlocal enabledelayedexpansion
title DayZ Cleaner Pro
mode con: cols=85 lines=25
color 0A

:MENU
cls
echo.
:: --- ENCABEZADO DE BLOQUE SÓLIDO ---
echo  [42m                                                                      [0m
echo  [42m[30m   D A Y Z   C L E A N E R   P R O   -   V E R S I O N   2 . 2        [0m
echo  [42m                                                                      [0m
echo.
:: --- INFORMACIÓN DEL SISTEMA (SIMULADA) ---
echo  [92m Estatus Sistema: [0m Operacional
echo  [92m Objetivo:        [0m %LOCALAPPDATA%\DayZ
echo  [92m Fecha:           [0m %DATE%
echo.
echo   +--------------------------------------------------------------------+
echo   ^|                                                                    ^|
echo   ^|  [1] Iniciar Limpieza Profunda                                     ^|
echo   ^|  [2] Salir                                                         ^|
echo   ^|                                                                    ^|
echo   +--------------------------------------------------------------------+
echo.
set /p "opt=>> Selecciona una opcion: "

if "%opt%"=="1" goto CLEAN
if "%opt%"=="2" exit
goto MENU

:CLEAN
cls
echo.
echo   [!] Accediendo a archivos locales de DayZ...
echo.

:: Barra de progreso simplificada y compatible
<nul set /p="Limpiando: [ "
for /L %%i in (1,1,20) do (
    <nul set /p="."
    ping -n 1 127.0.0.1 >nul
)
echo ] 100%%
echo.

:: Acciones de limpieza con rutas protegidas
echo   [SISTEMA] Eliminando reportes .RPT...      [Hecho]
del /f /q "%LOCALAPPDATA%\DayZ\*.rpt" 2>nul

echo   [SISTEMA] Purgando volcados de crash...     [Hecho]
del /f /q "%LOCALAPPDATA%\DayZ\crash_*" 2>nul

echo   [SISTEMA] Limpiando archivos de script...   [Hecho]
del /f /q "%LOCALAPPDATA%\DayZ\script_*" 2>nul

echo.
echo   ----------------------------------------------------------------------
echo   LIMPIEZA FINALIZADA: Tu equipo esta listo para la maravillosa experiencia de DayZ.
echo   ----------------------------------------------------------------------
echo.
echo Presiona una tecla para volver al menu...
pause >nul
goto MENU