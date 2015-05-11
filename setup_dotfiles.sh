#!/bin/bash
#setup script for putting all dotfiles in home directory
#Author: Dave Hand
#Requires dotfiles repo from github

#iterate over all dotfiles
for f in .[^.]*; do
  if [ -f $f ]; then #only care about files
    HOME_FILE="$HOME/$f"
    if [ -e $HOME_FILE ]; then #remove any existing file
      rm $HOME_FILE #remove
    fi
    ln -s $HOME/dotfiles/$f $HOME_FILE #symlink
  fi
done

#source the bash files
source ~/.bash_profile

#setup vim
./setup_vim.sh
