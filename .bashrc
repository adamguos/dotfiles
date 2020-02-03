#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
export LS_COLORS="di=01;36"
PS1='\[\e[33m\][\u@\h \W]\$ \[\e[m\]'

alias sshhome='ssh -p 24601 acousticwheels.duckdns.org'
alias sftphome='sftp -P 24601 acousticwheels.duckdns.org'
