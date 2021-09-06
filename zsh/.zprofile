export PATH=$PATH:~/.local/bin
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty2 ]]; then exec startx; fi
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx /usr/bin/bspwm; fi
