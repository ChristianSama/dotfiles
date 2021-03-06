#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
eval "$(rbenv init -)"
source /usr/share/nvm/init-nvm.sh
export PATH=$PATH:~/Scripts
