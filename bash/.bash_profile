export PATH=$HOME/.local/bin:$HOME/bin:$PATH
export SSH_AUTH_SOCK=/run/user/1000/ssh-agent.socket
export EDITOR=kak
export TERMINAL=st
export PATH="$HOME/.poetry/bin:$PATH"

systemctl --user import-environment PATH

GPG_TTY=$(tty)
export GPG_TTY
