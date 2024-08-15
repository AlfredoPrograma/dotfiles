#!/bin/bash

rm -rf ./dotfiles

BASE_CONFIG_DIR="$HOME/.config"

apps_configs_dirs=("i3" "alacritty" "nvim" "picom" "polybar" "rofi")


for dir in "${apps_configs_dirs[@]}"
	do
		echo "Copying $dir"
		cp -r "$BASE_CONFIG_DIR/$dir" "./$dir"
	done


