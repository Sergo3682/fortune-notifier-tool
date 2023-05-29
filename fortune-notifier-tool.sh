#!/bin/bash
tty_str=$(tty | grep tty)
len=${#tty_str}
msg=$(/usr/bin/fortune)

if [ $len -eq 0 ]; then
    notify-send -w "$msg" --icon=dialog-information --category=im
fi
