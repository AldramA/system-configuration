#!/bin/sh

chiocd=$(echo -e "Shutdown\nReboot\nExit" | dmenu -i )

[ $chiocd = "Shutdown" ] && doas poweroff
[ $chiocd = "Reboot" ] && doas reboot
[ $chiocd = "Exit" ] && pkill dwm
