systemctl --user import-environment XAUTHORITY PATH DBUS_SESSION_BUS_ADDRESS
systemctl --no-block --user restart xsession.target

