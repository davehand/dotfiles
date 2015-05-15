#!/bin/bash
#setup script for putting all dotfiles in home directory
#Author: Dave Hand
#Requires dotfiles repo from github, git, XCode
#Notes: After install, still have some apps to install (see Brewfile)
#       Also see README for ruby and python extras

#First need to install xcode command line tools
xcode-select --install

#Install homebrew and brew bundle
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap Homebrew/bundle
brew bundle

#make backup directory for storing already existent system files
if [ ! -e $HOME/backups ]; then
  mkdir $HOME/backups
fi

#iterate over all dotfiles
cd configs
for f in .[^.]*; do
  if [ -f $f ]; then #only care about files
    HOME_FILE="$HOME/$f"
    if [ -e $HOME_FILE ]; then #remove any existing file
      mv $HOME_FILE $HOME/backups #move to backup directory
    fi
    echo new link $HOME/.dotfiles/configs/$f to $HOME_FILE
    ln -s $HOME/.dotfiles/configs/$f $HOME_FILE #symlink
  fi
done
cd ..

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
cd $HOME
source $HOME/.bash_profile
