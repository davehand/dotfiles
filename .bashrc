#Configuration settings for bash
#Author: Dave Hand
#Sourced from .bash_profile

#source the prompt for bash
if [ -f ~/.prompt_bash ]; then
    source ~/.prompt_bash
fi

export EDITOR=vim
export GIT_EDITOR=vim

#configure history files
#don't store too much or duplicates
export LESSHISTFILE=0
export HISTSIZE=4096
export HISTFILESIZE=4096
export HISTCONTROL=ignoredups:erasedups

#aliases for popular commands
alias ls="ls -Gh"
alias ll="ls -alGh"

# check that archey is installed, then run it
if [ -x /usr/local/bin/archey ]; then
  archey -c
fi

#check that both fortune and cowsay are installed, display them
if [ -x /usr/local/bin/cowsay -a -x /usr/local/bin/fortune ]; then
  fortune | cowsay
fi
