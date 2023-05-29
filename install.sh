#!/bin/bash
name=$"fortune-notifier-tool"
wrk_dir=$"$HOME/.$name/"
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

autostart_dir=$"$HOME/.config/autostart/"
array=(
"Version=1.0" "Type=Application" "Name=$name" "Comment=" 
"Exec=$wrk_dir$script" "Icon=" "Path=" "Terminal=false" "StartupNotify=false"
)
echo [Desktop Entry] > $autostart_dir$name.desktop
for text in "${array[@]}"
do
echo $text >> $autostart_dir$name.desktop
done
