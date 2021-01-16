#!/bin/bash
#su saveguest
cp -pr /etc/xdg/openbox /home/saveguest/.config/
[ -e /etc/xdg/openbox/menu.xml ] && rm /etc/xdg/openbox/menu.xml
[ -e /etc/xdg/openbox/rc.xml ] && rm /etc/xdg/openbox/rc.xml

echo "sleep 10
[ \$DISPLAY = :0 ] && tint2 &
sleep 3
[ \$DISPLAY = :9 ] && xsetroot -solid yellow
[ $DISPLAY = :9 ] && xfce4-terminal &
sleep 1
# [ \$DISPLAY = :0 ] && xsetroot -solid blue
[ \$DISPLAY = :0 ] && vncviewer -passwd .vnc/passwd -geometry 960x1025+960+0 slave:35909 &
[ \$DISPLAY = :0 ] && vncviewer -passwd .vnc/passwd -geometry 960x1025+0+0 master:35909 &
sleep 1
[ \$DISPLAY = :0 ] && xfce4-terminal -T 'Hardware Check' -e 'ssh master journalctl -u bioehwtest -ef'" > /home/saveguest/.config/openbox/autostart

echo "# do nothing" > /etc/xdg/openbox/autostart 

