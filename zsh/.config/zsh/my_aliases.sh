crun(){
  g++ $1 && ./a.out && rm a.out
}
alias v='nvim'
alias ls='exa --icons'
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
alias sf="fd -t file"

#todo.txt stuff
alias t="todo.sh"
alias tta="t -t add"
alias tp="t pri"
alias tls="t ls"
alias td="t do"
alias live-server="~/.npm-global/bin/live-server"
