# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

if [ -f $HOME/.bash_profile ]; then
  . $HOME/.bash_profile
fi

# start gnome keyring through shell. Should replace with user systemd service
eval $(/run/wrappers/bin/gnome-keyring-daemon --start --components=ssh)

