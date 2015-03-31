#!/bin/sh

ioreg -l | grep -i capacity | tr 'n' ' | ' | awk '{print ("System Battery: ",$10/$5 * 100,"%")}';
osascript -e 'set a to do shell script "ioreg -w0 -l | grep Capacity"' -e "set h to word 5 of a" -e "set z to word 33 of a" -e "set b to word 38 of a" -e "set c to 1000 * b / z" -e "set d to round c" -e "set f to d / 10" -e "set q to 1000 * h / b" -e "set w to round q" -e "set j to w / 10" -e '"Battery Health: " & j &"%"' | iconv -f utf-8 -t ucs-2-internal;
ioreg -w0 -l | grep "Cycle Count" | awk 'BEGIN { FS = "=" } ; {print $8}' | awk 'BEGIN { FS = "}" } ; {print $1, "Cycles"}';

kbatt=`ioreg -c AppleBluetoothHIDKeyboard | grep BatteryPercent | tail -1|awk '{print $9}'`;
tbatt=`ioreg -c BNBTrackpadDevice | grep BatteryPercent | tail -1|awk '{print $10}'`;
mbatt=`ioreg -c BNBMouseDevice | grep Percent | tail -1| awk '{print $9}'`;
if [ ${#mbatt} -lt 1 ]; then
    echo "Magic Mouse: disconnected"
else
    echo "Magic Mouse Battery: $mbatt%"
fi
if [ ${#tbatt} -lt 1 ]; then
    echo "Magic Trackpad: disconnected"
else
    echo "Magic Trackpad Battery: $tbatt%"
fi
if [ ${#kbatt} -lt 1 ]; then
    echo "Wireless Keyboard: disconnected"
else
    echo "Wireless Keyboard Battery: $kbatt%"
fi
