#!/bin/bash
#
case $1 in
  shutdown)
    systemctl shutdown;
    echo "shutting down";;
  lock)
    ${LOCK_COMMAND:-i3lock};;
  reboot)
    systemctl reboot;
    echo "rebooting";;
  suspend)
    systemctl suspend;
    echo "going to sleep";;
  *)
    echo "Invalid command $1";
    exit 1;;
esac
  
