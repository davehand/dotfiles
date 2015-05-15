#!/bin/bash
#setup script for putting all dotfiles in home directory
#Author: Dave Hand
#Requires dotfiles repo from github

#make backup directory for storing already existent system files
if [ ! -e $HOME/.dotfiles/backups ]; then
  mkdir backups
fi

#Get homebrew installed

#iterate over all dotfiles
for f in .[^.]*; do
  if [ -f $f ]; then #only care about files
    HOME_FILE="$HOME/$f"
    if [ -e $HOME_FILE ]; then #remove any existing file
      mv $HOME_FILE $HOME/.dotfiles/backups #move to backup directory
    fi
    echo new link $HOME/.dotfiles/$f to $HOME_FILE
    ln -s $HOME/.dotfiles/$f $HOME_FILE #symlink
  fi
done

#setup vim
#first, clone the vundle repository
git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim

#then, install files specified by vundle
vim +PluginInstall +qall

#then, link molokai to the colors directory
if [ ! -e $HOME/.vim/colors ]; then
  mkdir $HOME/.vim/colors
fi
ln -s $HOME/.vim/bundle/molokai/colors/molokai.vim $HOME/.vim/colors/molokai.vim

#source the bash files
source $HOME/.bash_profile

#TODO other setup (pip, gems, rbenv global, etc.)
