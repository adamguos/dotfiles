# config_file_path=~/.zshrc

bindkey -v
PROMPT="%F{yellow}%~ > %f"

export VISUAL=nvim
export EDITOR=nvim
export TERM=xterm-256color

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
# setopt incappendhistory # Immediately append to the history file, not just when a term is killed

source ~/.cargo/env
source /usr/share/fzf/shell/key-bindings.zsh
