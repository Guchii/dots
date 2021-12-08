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



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/guchiii/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/guchiii/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/guchiii/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/guchiii/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

[[ $TERM = "alacritty" ]] && tls
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
