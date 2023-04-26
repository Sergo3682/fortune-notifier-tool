#!/bin/bash
name=$"fortune-notifier-tool"
wrk_dir=$"$HOME/test_dir/"
script=$"$name.sh"
if [ -d $wrk_dir ]; then
    echo $wrk_dir is alredy exists
else
    echo $wrk_dir does not exists
    echo creating...
    mkdir $wrk_dir
fi
cp $script $wrk_dir$script
chmod 744 $wrk_dir$script

#todo creating autostart service (systemd only)
#todo $UID exists btw
