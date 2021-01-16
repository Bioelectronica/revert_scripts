#!/bin/bash
#su root
#systemctl stop zmqserver 
mkdir -p /etc/systemd/system/getty@tty1.service.d
touch /etc/systemd/system/getty@tty1.service.d/override.conf

echo "[Service]
ExecStart=
ExecStart=-/usr/bin/agetty --autologin saveguest --noclear %I \$TERM" > /etc/systemd/system/getty@tty1.service.d/override.conf

chmod 777 /etc/xdg/openbox/autostart
> /etc/xdg/openbox/autostart


