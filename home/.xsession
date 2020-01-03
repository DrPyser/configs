xset s off
xset dpms 0 0 0
systemctl --user import-environment XAUTHORITY PATH DBUS_SESSION_BUS_ADDRESS
systemctl --no-block --user restart xsession.target

