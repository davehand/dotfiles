#Configuration settings for bash
#Author: Dave Hand
#Sourced from .bash_profile

#source the prompt for bash
if [ -f ~/.prompt_bash ]; then
    source ~/.prompt_bash
fi

#set default editor
export EDITOR=vim

#set git specific variables
export GIT_EDITOR=vim
export GIT_CRED=osxkeychain #should be different between Mac and Linux

#configure history files
#don't store too much or duplicates
export LESSHISTFILE=0
export HISTSIZE=4096
export HISTFILESIZE=4096
export HISTCONTROL=ignoredups:erasedups

#use colors
export CLICOLOR=1

#use linux colors for ls
export LSCOLORS=gxBxhxDxCxhxhxhxhxcxcx

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
