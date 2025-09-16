#!/bin/bash

HYPR_CONFIG="$HOME/.config/hypr/hyprland.conf"
WAYBAR_COLORS="$HOME/.config/waybar/colors.json"

get_hypr_color() {
    if [ -f "$HYPR_CONFIG" ]; then
        accent_color=$(grep -oP '(?<=accent_color\s*=\s*).*' "$HYPR_CONFIG" | head -n 1)
        echo "$accent_color"
    fi
}

get_waybar_color() {
    if [ -f "$WAYBAR_COLORS" ]; then
        accent_color=$(jq -r '.colors["primary"]' "$WAYBAR_COLORS")
        echo "$accent_color"
    fi
}

color=$(get_hypr_color)
if [ -z "$color" ]; then
    color=$(get_waybar_color)
fi
if [ -z "$color" ]; then
    color="#FFFFFF"
fi

notify-send -u normal -h "fg::$color" "Notificación de IA" "Este es un mensaje de notificación adaptado al tema."