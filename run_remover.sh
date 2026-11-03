#!/bin/bash
# Lanzador de la herramienta QuitaFondos Studio (modo local con servidor Python)
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Seleccionar el intérprete que tenga numpy, scipy y PIL instalados
if [ -f "$DIR/.venv/bin/python" ] && "$DIR/.venv/bin/python" -c "import numpy, scipy, PIL" 2>/dev/null; then
    PYTHON_CMD="$DIR/.venv/bin/python"
else
    PYTHON_CMD="python3"
fi

echo "Iniciando QuitaFondos Studio..."
"$PYTHON_CMD" "$DIR/app.py"
