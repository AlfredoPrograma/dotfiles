#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Github : @adi1090x
#
## Rofi   : Launcher (Modi Drun, Run, File Browser, Window)

dir="$HOME/.config/rofi/launchers/catppuccin"
theme='simple-window'

## Run
rofi \
    -show drun \
    -theme ${dir}/${theme}.rasi
