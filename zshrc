# ~/.zshrc

# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

# zsh-autoswitch-virtualenv plugin
if [[ -e .autoswitch_virtualenv.plugin.zsh ]]; then
  source .autoswitch_virtualenv.plugin.zsh
fi

# Enable mid-name completion
zstyle ':completion:*' completer _complete
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'
autoload -Uz compinit
compinit

# Aliases
alias l='ls -l'

EDITOR=nvim
