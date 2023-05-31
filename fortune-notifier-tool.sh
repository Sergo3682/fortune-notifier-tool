#!/bin/bash
msg=$($(which fortune))
man=$(man notify-send)
regex_res=$(grep -E "\-\w, \-\-\wait" <<< $man)
len_match=${#regex_res}

if [ "$len_match" -gt 0 ]; then
    notify-send -w --icon=dialog-information "$msg"
else
    notify-send --icon=dialog-information "$msg"
fi
