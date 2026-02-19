# 🛠️ DayZ Cleaner Pro v3.0

Script avanzado en **Batch** diseñado para optimizar el rendimiento de **DayZ** eliminando archivos temporales, registros de errores y volcados de memoria acumulados.

<img width="744" height="488" alt="image" src="https://github.com/user-attachments/assets/12dbf768-3984-4aaa-939a-ef594800a031" />
<img width="769" height="350" alt="image" src="https://github.com/user-attachments/assets/06e731a1-6eef-4625-a928-45fde0e96c26" />
<img width="714" height="328" alt="image" src="https://github.com/user-attachments/assets/1b9e51ff-0d6b-4e0e-86ac-a652ed3a9b58" />

---

## 📌 Descripción

**DayZ Cleaner Pro** es una herramienta de mantenimiento local para el cliente de DayZ.Automatiza la limpieza de archivos residuales que pueden causar inestabilidad o cierres inesperados del juego.

### ✨ Novedades de la v3.0
- **Interfaz Visual Pro**: Menú con arte ASCII y colores ANSI para una mejor experiencia.
- **Estadísticas en Tiempo Real**: Analizador de archivos que cuenta cuántos elementos hay por limpiar antes de actuar.
- **Niveles de Limpieza**: Desde un mantenimiento rápido hasta una purga profunda del sistema.
- **Barras de Progreso**: Feedback visual durante la eliminación de archivos.

---

## ⚙️ Funcionalidades

* **[1] Limpieza Rápida**: Elimina reportes `.rpt`, Crashdumps y scripts de sesión.
* **[2] Limpieza Profunda**: Purga completa incluyendo logs, archivos temporales (`.tmp`) y backups (`.bak`).
* **[3] Solo Reportes**: Limpieza específica de archivos `.rpt`.
* **[4] Ver Estadísticas**: Muestra una tabla detallada con el conteo de archivos por categoría.
* **[5] Abrir Carpeta**: Acceso directo a la ruta de datos locales de DayZ.

---

## 🧹 Archivos que gestiona

| Tipo de archivo | Patrón | Descripción |
| :--- | :--- | :--- |
| **Reportes** | `*.rpt` | Registros de actividad y errores del motor. |
| **CrashDumps** | `crash_*` | Volcados de memoria generados tras un fallo. |
| **Scripts** | `script_*` | Archivos temporales de ejecución de scripts de sesión. |
| **Logs** | `*.log` | Registros generales de sistema. |
| **Temporales** | `*.tmp` | Archivos de uso efímero del cliente. |
| **Backups** | `*.bak` | Copias de seguridad antiguas. |

---

## 🗂️ Rutas Utilizadas

El script opera exclusivamente en la carpeta de datos locales del usuario:
`%LOCALAPPDATA%\DayZ` 

> [!IMPORTANT]
> El script verifica automáticamente si la carpeta existe. Si no se encuentra, notificará el error en lugar de intentar realizar la limpieza.

---

## ▶️ Uso

1.  Descarga el archivo `DayZ_Cleaner_Pro.bat`.
2.  Ejecútalo (se recomienda **clic derecho > Ejecutar como administrador** para asegurar permisos).
3.  Navega por el menú interactivo seleccionando el número de la opción deseada.
4.  Confirma la operación cuando el sistema lo solicite para evitar borrados accidentales.

---

## 🖥️ Requisitos

- **Sistema Operativo**: Windows 10 / 11.
- **Entorno**: Consola `cmd.exe` compatible con códigos de escape ANSI.
- **DayZ**: Instalado y ejecutado al menos una vez para generar el directorio local.

---

## 🔒 Seguridad

- **No borra configuraciones**: Tus archivos de perfil (`.DayZProfile`) y asignación de teclas están a salvo.
- **No afecta Mods**: No interactúa con los archivos de descarga del Workshop.
- **Proceso Transparente**: Cada paso de la limpieza muestra una confirmación `[OK]` al finalizar.

---

## 📄 Licencia

Este proyecto se distribuye bajo licencia **MIT**.  
Uso destinado exclusivamente al mantenimiento local del cliente.

---

## ⚠️ Aviso

Este script no está afiliado, asociado ni respaldado por **Bohemia Interactive**.  
¡Mantente a salvo en Chernarus!.

---

**Versión:** `v3.0`
