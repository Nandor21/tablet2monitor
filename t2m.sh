#!/bin/bash
./t2m-off.sh #monitor reset

source dis_conf.txt

# Új mód létrehozása
#gtf 1280 800 60
gtf $v_dis_gft
sleep 1
xrandr --newmode $virtual_dis  83.46  1280 1344 1480 1680  800 801 804 828  -HSync +Vsync
sleep 1
xrandr --addmode VIRTUAL1 $virtual_dis
sleep 1

# ADB reverse parancs futtatása
adb reverse tcp:5900 tcp:5900

sleep 1
# Egér és touchpad engedélyezése
xinput --set-prop 10 "Device Enabled" 1
xinput --set-prop 13 "Device Enabled" 1

sleep 1
# VNC szerver indítása, a másodlagos kijelző küldése az egérkurzor megjelenítésével
x11vnc -clip $vnc_dis_size+$main_dis_length+0 -xwarppointer