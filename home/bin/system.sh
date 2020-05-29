#! /usr/bin/env sh

OPTIONS='poweroff\nreboot\nsuspend\nkexec'
ACTION=$(echo -e $OPTIONS | dmenu)

case $ACTION in
    poweroff)
        systemctl poweroff;;
    suspend)
        systemctl suspend;;
    reboot)
        systemctl reboot;;
    kexec)
        systemctl kexec;;
    daemon-reload)
        systemctl daemon-reload;;
    *)
        systemctl $ACTION;;
esac

