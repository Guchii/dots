crun(){
  g++ $1 && ./a.out && rm a.out
}
alias v='lvim'
alias ls='exa --icons '
alias ll='ls -lG'
alias zz='source ~/.zshrc'
alias nf='neofetch'
alias rx='rxfetch'
alias cl='clear'
alias lg='lazygit'
alias logout='killall -u $USER'
alias cd='z'
alias zr='devour zathura'
alias bspwmrc='lvim ~/.config/bspwm/bspwmrc'
alias rel="xrdb merge .Xresources && kill -USR1 $(pidof st)"
