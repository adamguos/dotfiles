# ~/.zshrc

# zsh prompt
PROMPT="%F{red}%~ > %f"

# zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# zsh-autoswitch-virtualenv
source ~/.zsh/zsh-autoswitch-virtualenv/autoswitch_virtualenv.plugin.zsh

# Tab completion from the middle
zstyle ':completion:*' completer _complete
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'
autoload -Uz compinit
compinit

# Bind keys
bindkey '^H' backward-kill-word
bindkey '5~' kill-word
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[3~" delete-char
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line

# Aliases
alias l='exa -lh'
alias xs='xset r rate 250 45'

# Path
export PATH=$PATH:~/.emacs.d/bin

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Fix RVM
source ~/.rvm/scripts/rvm

# Send SIGKILL to all processes with this name
forcekill() {
    kill -9 $(ps aux | grep $1 | awk '{print $2}')
}

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
conda_setup() {
    __conda_setup="$('/home/adam/.miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
    if [ $? -eq 0 ]; then
        eval "$__conda_setup"
    else
        if [ -f "/home/adam/.miniconda3/etc/profile.d/conda.sh" ]; then
            . "/home/adam/.miniconda3/etc/profile.d/conda.sh"
        else
            export PATH="/home/adam/.miniconda3/bin:$PATH"
        fi
    fi
    unset __conda_setup
}
# <<< conda initialize <<<

