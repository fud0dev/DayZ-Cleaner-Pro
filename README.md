# 🛠️ DayZ Cleaner Pro v3.0 · Optimizador de Rendimiento

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Platform: Windows](https://img.shields.io/badge/Platform-Windows_10_11-blue?logo=windows)](https://www.microsoft.com/windows)
[![Version](https://img.shields.io/badge/version-3.0-brightgreen)](https://github.com/fud0dev/Dayz-Cleaner-Pro)

> 🎯 **¿Cansado de los tirones de FPS al entrar en ciudades o de los crashes silenciosos?**  
> Este script en **Batch (CMD)** es la navaja suiza para mantener tu carpeta local de DayZ **libre de basura digital**. Elimina de forma segura los archivos de volcado de memoria (`crash dumps`) y registros (`RPT`) que saturan el motor del juego.

<p align="center">
  <img src="https://via.placeholder.com/600x200/0d1117/ffffff?text=[Vista+Previa+del+Menu+ASCII+Aquí]" alt="DayZ Cleaner Pro Menu Preview" />
</p>

---

## 🚀 ¿Por qué necesitas esto?

DayZ es conocido por su inestabilidad. Con el tiempo, la carpeta `%LOCALAPPDATA%\DayZ` acumula:
- **Archivos `.RPT`**: A veces alcanzan **varios Gigabytes** en sesiones largas con muchos mods.
- **Archivos `crash_*.dmp`**: Restos de cuelgues anteriores que el juego intenta cargar en memoria.
- **Archivos Temporales**: Scripts obsoletos que causan conflictos con actualizaciones de mods.

**Resultado**: Limpiar esto manualmente es tedioso; hacerlo con **DayZ Cleaner Pro** es instantáneo.

## ✨ Características Clave (v3.0)

| Nivel | Función | Beneficio Directo |
| :---: | :--- | :--- |
| **⚡** | **Limpieza Rápida** | Elimina los `Crash Dumps` y `RPT`. **Recomendado hacerlo antes de cada partida.** |
| **🧹** | **Limpieza Profunda** | Purga `.log`, `.tmp` y `.bak`. **Ideal tras una actualización del juego o de mods.** |
| **📊** | **Estadísticas en Vivo** | Analiza cuánta "basura" tienes **ANTES** de borrar. ¡Sorpréndete con el espacio que recuperas! |
| **🖥️** | **Interfaz ASCII Pro** | Menú visual con colores ANSI y barras de progreso (sin necesidad de instalar Python o Node). |

## 📂 Archivos Gestionados (Qué toca y qué NO toca)

| ✅ **SÍ Elimina (Seguro)** | ❌ **NO TOCA (Protegido)** |
| :--- | :--- |
| `*.rpt` (Reportes de error) | `*.DayZProfile` (Tu configuración de teclas y gráficos) |
| `crash_*` (Volcados de memoria) | `*.vars` / `*.cfg` (Configuración del servidor local) |
| `script_*` (Scripts de sesión caducos) | Carpeta `!Workshop` (Tus Mods descargados) |
| `*.log`, `*.tmp`, `*.bak` | |

## ▶️ Instalación y Uso Rápido

1.  **Descarga** el archivo [`DayZ_Cleaner_Pro.bat`](https://github.com/fud0dev/Dayz-Cleaner-Pro/blob/main/DayZ_Cleaner_Pro.bat).
2.  **Ejecuta** como Administrador (Click Derecho > `Ejecutar como administrador`).
    - *Nota: Es necesario para poder borrar archivos bloqueados por el sistema.*
3.  Selecciona `[1]` para una **Limpieza Rápida** o `[4]` para ver **Estadísticas**.
4.  ¡Listo! Inicia DayZ y nota la diferencia en la carga inicial.

## 🖥️ Requisitos Técnicos

- **S.O.:** Windows 10 / 11 (Soporte para secuencias de escape ANSI/VT100).
- **DayZ:** El juego debe haberse ejecutado al menos una vez en el PC.

## ⚠️ Aviso Legal y de Seguridad

- **No Oficial:** Esta herramienta es un script de mantenimiento creado por la comunidad. No está afiliada a **Bohemia Interactive**.
- **Seguridad Garantizada:** El script solo opera dentro de `%LOCALAPPDATA%\DayZ`. **No modifica el registro de Windows, no inyecta DLLs y no se comunica con internet.** Es 100% transparente al ser código Batch abierto.

---

### 📝 Licencia MIT · Mantente a salvo en Chernarus 🎒
