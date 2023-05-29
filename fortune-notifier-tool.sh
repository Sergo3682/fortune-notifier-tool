#!/bin/bash
msg=$($(which fortune))
notify-send --icon=dialog-information --category=im "$msg"
