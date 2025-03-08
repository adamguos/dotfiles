# config_file_path=~/.zshrc

bindkey -v
PROMPT="%F{yellow}%~ > %f"

export EDITOR=nvim
export TERM=xterm-256color
export VISUAL=nvim

alias ll='ls -hl --color=auto'

zstyle ':completion:*' completer _complete
zstyle ':completion:*' matcher-list '' \
    'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'
autoload -Uz compinit
compinit

################################################################################
# History
################################################################################

HISTSIZE=5000             # How many lines of history to keep in memory
HISTFILE=~/.zsh_history   # Where to save history to disk
SAVEHIST=5000             # Number of history entries to save to disk
# HISTDUP=erase           # Erase duplicates in the history file
setopt appendhistory      # Append history to the history file (no overwriting)
setopt sharehistory       # Share history across terminals
setopt incappendhistory   # Immediately append to the history file, not just
                          # when a term is killed

################################################################################
# Source
################################################################################

if [[ -d ~/.cargo ]]; then
    source ~/.cargo/env
fi

if [[ -f /usr/share/fzf/shell/key-bindings.zsh ]]; then
    source /usr/share/fzf/shell/completion.zsh
    source /usr/share/fzf/shell/key-bindings.zsh
elif [[ -f /usr/share/doc/fzf/examples/key-bindings.zsh ]]; then
    source /usr/share/doc/fzf/examples/completion.zsh
    source /usr/share/doc/fzf/examples/key-bindings.zsh
elif [[ -f /usr/share/fzf/key-bindings.zsh ]]; then
    source /usr/share/fzf/completion.zsh
    source /usr/share/fzf/key-bindings.zsh
fi

source ~/.config/zsh/zsh-vi-search/zsh-vi-search.zsh
