# environment variables
export PATH=$PATH:~/.local/bin:$~/.local/share/anaconda3/bin
export DRI_PRIME=1
export _JAVA_AWT_WM_NONREPARENTING=1
export EDITOR=lvim
export WALL=/home/$USER/.local/share/wallpapers

# StartX configurations per tty
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx ~/.Xdwm; fi
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty2 ]]; then exec startx /usr/bin/bspwm; fi
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty3 ]]; then exec startx /usr/bin/openbox-session; fi
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty4 ]]; then exec startx ~/.Xkde; fi
