# config_file_path=~/.zshrc

bindkey -v
PROMPT="%F{yellow}%~ > %f"

export EDITOR=nvim
export PATH="$HOME/bin:$PATH"
export TERM=xterm-256color
export VISUAL=nvim

alias ll='ls -hl --color=auto'

##############################################################################
# History Configuration
##############################################################################
HISTSIZE=5000             # How many lines of history to keep in memory
HISTFILE=~/.zsh_history   # Where to save history to disk
SAVEHIST=5000             # Number of history entries to save to disk
# HISTDUP=erase           # Erase duplicates in the history file
setopt appendhistory      # Append history to the history file (no overwriting)
setopt sharehistory       # Share history across terminals
setopt incappendhistory # Immediately append to the history file, not just when a term is killed

if [[ -d ~/.cargo ]]; then
    source ~/.cargo/env
fi

if [[ -d /usr/share/fzf/shell ]]; then
    source /usr/share/fzf/shell/key-bindings.zsh
elif [[ -d /usr/share/doc/fzf/examples ]]; then
    source /usr/share/doc/fzf/examples/key-bindings.zsh
fi
