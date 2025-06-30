bindkey -v
PROMPT="%F{yellow}%~ > %f"

alias ll='ls -hl --color=auto'

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

if [[ -d ~/.cargo ]]; then source ~/.cargo/env fi

source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source <(fzf --zsh)

#
# Bindings
#

bindkey '^w' autosuggest-accept
