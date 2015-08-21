#Configuration settings for bash
#Author: Dave Hand
#Sourced from .bash_profile

#add the homebrew path to the PATH
#if [ -d $(brew --prefix)/bin ]; then
#  export PATH=$(brew --prefix)/bin:$PATH
#fi

#source the prompt for bash
if [ -f ~/.prompt_bash ]; then
  source ~/.prompt_bash
fi

#source homebrew tab completion
if [ -f $(brew --prefix)/Library/Contributions/brew_bash_completion.sh ]; then
  source $(brew --prefix)/Library/Contributions/brew_bash_completion.sh
fi

#source the bash completion file if it exists
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  source $(brew --prefix)/etc/bash_completion
fi

#source rbenv commands if rbenv directory exists
if [ -d $HOME/.rbenv ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

#set default editor
export EDITOR=vim

#set git specific variables for gitconfig
export GIT_CRED=osxkeychain #should be different between Mac and Linux

#configure history files
#don't store too much or duplicates
export LESSHISTFILE=0
export HISTSIZE=4096
export HISTFILESIZE=4096
export HISTCONTROL=ignoredups:erasedups

#use colors in terminal
export CLICOLOR=1
#use linux colors for ls - LS_COLORS on Linux
export LSCOLORS=gxBxhxDxCxhxhxhxhxcxcx

#aliases for popular commands
alias ls="ls -Gh"
alias ll="CLICOLOR_FORCE=1 ls -alGh" #forces colors through pipes
alias less="less -R" #read in color
alias vi="vim" #too many mistakes

#custom functions
#colored man pages
man() {
  env \
  LESS_TERMCAP_mb=$(printf "\e[1;31m") \
  LESS_TERMCAP_md=$(printf "\e[1;31m") \
  LESS_TERMCAP_me=$(printf "\e[0m") \
  LESS_TERMCAP_se=$(printf "\e[0m") \
  LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
  LESS_TERMCAP_ue=$(printf "\e[0m") \
  LESS_TERMCAP_us=$(printf "\e[1;32m") \
  man "$@"
}

#rm puts files in the trash (Mac)
function rm() {
  local path
  for path in "$@"; do
    # ignore any arguments
    if [[ "$path" = -* ]]; then :
    else
      local dst=${path##*/}
      # append the time if necessary
      while [ -e ~/.Trash/"$dst" ]; do
        dst="$dst "$(date +%H-%M-%S)
      done
      mv "$path" ~/.Trash/"$dst"
    fi
  done
}

#update brew
bup() {
  brew update; brew upgrade --all; brew cleanup
  brew update; brew upgrade brew-cask; brew cask cleanup
}

#TODO update other package managers and such: pip, gem, npm

#update everything TODO - call for other package managers too
update() {
  bup
}

# check that archey is installed, then run it
if [ -x /usr/local/bin/archey ]; then
  archey -c
fi

#check that both fortune and cowsay are installed, display them
if [ -x /usr/local/bin/cowsay -a -x /usr/local/bin/fortune ]; then
  fortune | cowsay
fi
