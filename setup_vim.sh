#setup script for getting everything vimrc needs
#Author: Dave Hand
#Requires .vimrc to be present in system

#first, clone the vundle repository
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#then, install files specified by vundle
vim +PluginInstall +qall

#then, link molokai to the colors directory
mkdir ~/.vim/colors
ln -s ~/.vim/bundle/molokai/colors/molokai.vim ~/.vim/colors/molokai.vim
