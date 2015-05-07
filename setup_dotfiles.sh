#setup script for putting all dotfiles in home directory
#Author: Dave Hand
#Requires dotfiles repo from github

#symlink all the files to the home directory
#TODO simply have this iterate over all dotfiles
ln -s ~/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.prompt_bash ~/.prompt_bash
ln -s ~/dotfiles/.vimrc ~/.vimrc

#source the bash files
source ~/.bash_profile

#setup vim
sh setup_vim.sh

