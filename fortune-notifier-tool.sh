#!/bin/bash
tty_str=$(tty | grep tty)
len=${#tty_str}
msg=$($(which fortune))

if [ $len -eq 0 ]; then
    notify-send -w --icon=dialog-information --category=im "$msg"
fi
