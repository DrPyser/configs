export PATH=$HOME/.local/bin:$HOME/bin:$PATH
systemctl --user import-environment PATH
export SSH_AUTH_SOCK=/run/user/1000/ssh-agent.socket
export EDITOR=kak
