#!/bin/bash
# Uso: ./autocomplete_path.sh "<ruta_parcial>"
prefix="${1/#\~/\$HOME}" # Expande ~ a $HOME
compgen -A file -o nospace -- "$prefix"