# config_file_path=~/.zshrc
PROMPT="%F{yellow}%~ > %f"

alias ll='ls -ahl --color=auto'

bindkey -v

export EDITOR=nvim
export VISUAL=nvim

#
# Completion
#

zstyle ':completion:*' completer _complete
zstyle ':completion:*' matcher-list '' \
    'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'
autoload -Uz compinit
compinit

#
# History
#

HISTDUP=erase
HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=5000
setopt appendhistory
setopt incappendhistory
setopt sharehistory

#
# Source
#

if [[ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]]; then
    source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
else
    source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

if [[ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
    source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
else
    source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

source <(fzf --zsh)

#
# Bindings
#

bindkey '^w' autosuggest-accept

autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd '!' edit-command-line
