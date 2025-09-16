#!/bin/bash

LOG_FILE="$HOME/.config/hyprland/ai.log"

log_event() {
    local log_type="$1"
    local log_message="$2"
    echo "$(date '+%Y-%m-%d %H:%M:%S') [$log_type] $log_message" >> "$LOG_FILE"
}

if [ "$#" -ne 2 ]; then
    echo "Uso: $0 <tipo> <mensaje>"
    exit 1
fi

log_event "$1" "$2"