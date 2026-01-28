# DayZ Cleaner Pro

Script en **Batch (Windows)** para limpiar archivos temporales, logs y restos de fallos generados por **DayZ** en el directorio local del usuario.

Diseñado para ejecutarse de forma segura, sin afectar archivos del sistema ni configuraciones críticas del juego.

---

## 📌 Descripción

**DayZ Cleaner Pro** elimina archivos innecesarios que se acumulan con el uso del juego, como:

- Reportes `.rpt`
- Volcados de crash
- Archivos temporales de scripts

Incluye una **interfaz por consola**, menú interactivo y una simulación de progreso compatible con `cmd.exe`.

---

## 🗂️ Rutas utilizadas

El script actúa exclusivamente sobre: %LOCALAPPDATA%\DayZ


No accede a carpetas del sistema ni al directorio de instalación del juego.

---

## ⚙️ Funcionalidades

- Menú interactivo en consola
- Limpieza segura y silenciosa
- Barra de progreso compatible
- Manejo de errores sin interrupciones
- Interfaz visual mejorada (color, formato)

---

## 🧹 Archivos que elimina

| Tipo de archivo | Patrón |
|-----------------|--------|
| Logs del juego  | `*.rpt` |
| Crashes         | `crash_*` |
| Scripts temporales | `script_*` |

---

## ▶️ Uso

1. Descarga el archivo `dayz_cleanup.bat`
2. Haz clic derecho → **Ejecutar como administrador** (recomendado)
3. Selecciona la opción **[1] Iniciar Limpieza Profunda**
4. Espera a que finalice y vuelve al menú

---

## 🖥️ Requisitos

- Windows 10 / 11
- DayZ instalado y ejecutado al menos una vez
- Consola `cmd.exe` compatible

---

## 🔒 Seguridad

- No borra configuraciones
- No elimina perfiles ni mods
- No requiere conexión a Internet
- No modifica el registro de Windows

---

## 📄 Licencia

Este proyecto se distribuye bajo licencia **MIT**.  
Uso libre bajo tu propia responsabilidad.

---

## ⚠️ Aviso

Este script no está afiliado ni respaldado por **Bohemia Interactive**.  
Uso destinado a mantenimiento local del cliente.

---

## 📦 Versión

**v2.2**


