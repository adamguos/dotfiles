PROMPT="%F{red}%~ > %f"

alias ll='ls -ahl --color=auto'

bindkey -v

export EDITOR=nvim
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/go/bin:$PATH
export PATH=/usr/local/go/bin:$PATH
export VISUAL=nvim

if which gsettings >/dev/null 2>&1; then
    gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 22
    gsettings set org.gnome.desktop.peripherals.keyboard delay 250
fi

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
HISTSIZE=1000000
SAVEHIST=1000000
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

bindkey '^y' autosuggest-accept

autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd '!' edit-command-line
