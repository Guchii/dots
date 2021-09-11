# environment variables
export PATH=$PATH:~/.local/bin
export DRI_PRIME=1

# StartX configurations per tty
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty2 ]]; then exec startx; fi
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx /usr/bin/bspwm; fi
