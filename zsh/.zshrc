cat ~/todos.txt
# Lines configured by zsh-newuser-install
DIR_ZSH=~/.config/zsh
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

eval "$(zoxide init zsh)"

setopt MENU_COMPLETE
setopt no_list_ambiguous

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/guchiii/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
source $DIR_ZSH/prompt.zsh
source $DIR_ZSH/my_aliases.sh
# source $DIR_ZSH/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
# source $DIR_ZSH/zsh-completions/zsh-completions.plugin.zsh
source $DIR_ZSH/key-bindings.zsh
source $DIR_ZSH/zsh-autosuggestions/zsh-autosuggestions.zsh
source $DIR_ZSH/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

