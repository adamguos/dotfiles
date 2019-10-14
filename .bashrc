# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
PS1="\[\e[33m\][\u@\h \W]\$ \[\e[m\]"

alias sshhome='ssh -p 24601 acousticwheels.duckdns.org'
alias sftphome='sftp -P 24601 acousticwheels.duckdns.org'
alias please='sudo $(fc -ln -1)'

xset r rate 250 45
