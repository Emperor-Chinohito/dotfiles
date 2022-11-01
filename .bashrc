# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
export PS1="\[$(tput setaf 34)\]\u\[$(tput setaf 34)\]@\[$(tput setaf 34)\]\h \[$(tput setaf 33)\]\w \[$(tput sgr0)\]$ "
