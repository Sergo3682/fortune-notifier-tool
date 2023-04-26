#!/bin/bash
tty_str=$(tty | grep tty)
len=${#tty_str}
msg=$(/usr/bin/fortune)

if [ $len -gt 0 ]; then
    echo
    echo $msg
    echo
else
    notify-send -w "$msg" --icon=dialog-information --category=im
fi
