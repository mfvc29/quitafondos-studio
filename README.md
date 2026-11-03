# QuitaFondos Studio

Herramienta web para eliminar fondos blancos de imágenes y retocarlas a mano, píxel a píxel.

## Funciones

- **Borrado automático de fondo** con tres modos:
  - *Solo exterior*: recorta desde los bordes sin agujerear figuras claras.
  - *Inteligente*: exterior + huecos internos.
  - *Global*: elimina todo el blanco.
- Ajustes de **tolerancia**, **choke** (quita el halo de JPEG) y **suavizado**.
- **Retoque manual**: pincel borrador, pincel restaurador y varita mágica.
- Deshacer / rehacer, zoom, desplazamiento y vista comparativa (antes / después).
- Abre imágenes sueltas, carpetas completas o arrastra y suelta.
- Descarga el resultado como **PNG transparente**.

Todo el procesamiento se hace en el navegador: las imágenes no se suben a ningún servidor.

### Atajos

| Tecla | Acción |
| --- | --- |
| `B` | Pincel borrador |
| `R` | Pincel restaurador |
| `W` | Varita mágica |
| `[` / `]` | Reducir / aumentar pincel |
| `Espacio` (mantener) | Ver original |
| `Ctrl+Z` / `Ctrl+Y` | Deshacer / rehacer |

## Versión web

La carpeta `static/` es un sitio estático y se puede publicar tal cual (por ejemplo en Vercel).

## Modo local (opcional)

Con el servidor Python se habilitan además la apertura de carpetas por ruta, el guardado
directo en disco y el procesamiento por lotes.

```bash
pip install -r requirements.txt
./run_remover.sh          # abre http://localhost:8085
```

### Línea de comandos

```bash
python3 cli.py imagen.jpg -o imagen.png -m border_only -t 25 --trim
```
