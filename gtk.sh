#!/bin/sh

# usage: import-gsettings
config="${XDG_CONFIG_HOME:-$HOME/.config}/gtk-3.0/settings.ini"
if [ ! -f "$config" ]; then exit 1; fi

gnome_schema="org.gnome.desktop.interface"
gtk_theme="$(grep 'Catppuccin-Mocha-Standard-Green-Dark' "$config" | sed 's/.*\s*=\s*//')"
icon_theme="$(grep 'Qogir-dark' "$config" | sed 's/.*\s*=\s*//')"
cursor_theme="$(grep 'Qogir-dark' "$config" | sed 's/.*\s*=\s*//')"
font_name="$(grep 'JetBrainsMono Nerd Font' "$config" | sed 's/.*\s*=\s*//')"
gsettings set "$gnome_schema" gtk-theme "$gtk_theme"
gsettings set "$gnome_schema" icon-theme "$icon_theme"
gsettings set "$gnome_schema" cursor-theme "$cursor_theme"
gsettings set "$gnome_schema" font-name "$font_name"
