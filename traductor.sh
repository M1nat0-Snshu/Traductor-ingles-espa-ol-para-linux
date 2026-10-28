#!/bin/bash

text=$(rofi -dmenu -l 0 -p "palabra o frase" | trans -no-ansi en:es)

if [[ -n "$text" ]]; then
    notify-send -t 10000 "$text"
fi

# La configuracion del color de fondo de 'notify-send' se puede cambiar en /etc/dunst/dunstsrc -> [urgency_normal]
