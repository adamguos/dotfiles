bindkey -v
PROMPT="%F{yellow}%~ > %f"

export EDITOR=nvim
export VISUAL=nvim

alias ll='ls -hl --color=auto'

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

if [[ -d ~/.cargo ]]; then
    source ~/.cargo/env
fi

if [[ -f /usr/share/fzf/shell/key-bindings.zsh ]]; then
    source /usr/share/fzf/shell/key-bindings.zsh
elif [[ -f /usr/share/doc/fzf/examples/key-bindings.zsh ]]; then
    source /usr/share/doc/fzf/examples/key-bindings.zsh
elif [[ -f /usr/share/fzf/key-bindings.zsh ]]; then
    source /usr/share/fzf/key-bindings.zsh
fi

source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#
# Bindings
#

bindkey '^w' autosuggest-accept
