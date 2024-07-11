echo shutdown virtual monitor
killall x11vnc
sleep 1

source dis_conf.txt


xrandr --output VIRTUAL1 --off
echo 25% ok
sleep 1

xrandr --delmode VIRTUAL1 $virtual_dis
echo 50% ok
sleep 1

xrandr --rmmode $virtual_dis
echo 75% ok
sleep 1

adb kill-server
echo 100% ok
sleep 1
