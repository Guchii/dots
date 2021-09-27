# environment variables
export PATH=$PATH:~/.local/bin
export DRI_PRIME=1
export _JAVA_AWT_WM_NONREPARENTING=1

# StartX configurations per tty
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx /usr/bin/bspwm; fi
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty2 ]]; then exec startx /usr/bin/bspwm -c ~/.config/bspwm/bspwmrcgame; fi
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty3 ]]; then exec startx ~/.Xdwm; fi 
