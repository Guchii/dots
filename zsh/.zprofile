# environment variables
export PATH=$PATH:~/.local/bin
export DRI_PRIME=1
export _JAVA_AWT_WM_NONREPARENTING=1
export EDITOR=lvim

# StartX configurations per tty
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx /usr/bin/bspwm; fi
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty2 ]]; then exec startx ~/.Xdwm; fi 
