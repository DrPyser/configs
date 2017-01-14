set -x EDITOR ~/bin/edit
set -x ALTERNATE_EDITOR ""
set -x VISUAL "emacsclient -c -a emacs"         # $VISUAL opens in GUI with non-daemon as alternate
set -x LANG en_CA.UTF-8
set -x EMAIL "schok53@gmail.com"
set -x NAME "Charles Langlois"
set -x SMTPSERVER "smtp.gmail.com"
set -x JAVA_HOME "/usr/java/jdk1.8.0_102/bin/java"
set -x PYO_SERVER_AUDIO "jack"
set -x PYO_PATH "$HOME/pyo"
set -x PYTHONPATH "/home/drpyser/repositories/pyo/pyolib/:/home/drpyser/repositories/pyo/pyolib/custom"
set -x LD_LIBRARY_PATH /usr/lib64 /home/drpyser/anaconda2/lib/ /usr/local/lib64/ $LD_LIBRARY_PATH
set -x PLAN9 /usr/local/plan9/plan9port
set -x PATH "/home/drpyser/anaconda2/bin" "/usr/bin" "/bin" "/usr/sbin" "/sbin" "$HOME/bin" "$HOME/.local/bin" "$HOME/apache-maven/apache-maven-3.3.9/bin" "/usr/java/jdk1.8.0_102/bin" $PLAN9/bin $PATH


# xmodmap /home/drpyser/.Xmodmap
setxkbmap -layout ca,en,"ca(multix)"
setxkbmap -option caps:hyper terminate:ctrl_alt_bksp
# xinput set-prop 13 280 1


alias up "cd .."


if test -f $HOME/.dircolors
   . $HOME/.dircolors
end  

xrdb -merge ~/.Xresources;

facts | cowsay   
