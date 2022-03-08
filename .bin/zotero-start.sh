#!/bin/bash
# Requires xdotool

zotero&

i=0
while [ $i -lt 20 ]
do
    sleep 1
    window=`xlsclients|grep "zotero"`
    if [ "$window" != "" ]
    then
        for w in $window
        do
            xdotool windowminimize $w
        done
        break
    fi
done




