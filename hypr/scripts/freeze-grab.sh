#!/usr/bin/env bash
# Uso: freeze-grab.sh SALIDA.png
# Congela la pantalla, deja seleccionar un área y la guarda en SALIDA.png.
# Sale con código 1 si se cancela la selección.
set -uo pipefail

out="${1:?Falta el archivo de salida}"

hyprpicker -r -z &
picker=$!
trap 'kill "$picker" 2>/dev/null' EXIT
sleep 0.1   # da tiempo a que hyprpicker congele la pantalla

geometry="$(slurp)" || exit 1
[[ -n "$geometry" ]] || exit 1

# Se captura mientras la pantalla sigue congelada; el trap descongela al final
grim -g "$geometry" "$out"
