"Configuration settings for vim
"Author: Dave Hand
"Borrowed somewhat from everett1992/dotfiles
"Requires Vundle - run 'sh setup_vim.sh'

set shell=/bin/bash

set nocompatible "disable vi compatibility
filetype off

":PluginList       - lists configured plugins
":PluginInstall    - installs plugins;
"                    append `!` to update or just :PluginUpdate
":PluginSearch foo - searches for foo; append `!` to refresh local cache
":PluginClean      - confirms removal of unused plugins;
"                    append `!` to auto-approve removal
"Also can run :h vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  "needed to install rest of plugins
  Plugin 'VundleVim/Vundle.vim'

  Plugin 'tpope/vim-fugitive'

  Plugin 'itspriddle/vim-stripper'

  Plugin 'tpope/vim-rails'

  Plugin 'kchmck/vim-coffee-script'

  Plugin 'pangloss/vim-javascript'

  Plugin 'scrooloose/nerdtree'

  Plugin 'scrooloose/syntastic'

  "install colorscheme
  Plugin 'tomasr/molokai'
call vundle#end()
filetype plugin indent on

set t_Co=256 "Enable 256 colors in vim
silent! colorscheme molokai "Use the molokai color scheme if present
let g:rehash256 = 1 "Use Molokai's new version
syntax on "syntax highlighting

set cursorline "highlights current line

set laststatus=2 "always display status bar
set diffopt+=iwhite "ignore white space in vimdiff

set ruler "sets line/column in bottom row
set number "line numbers
set nowrap "don't wrap lines
set virtualedit=onemore "can place cursor over line end in normal mode

set expandtab
set smarttab "Insert space instead of tabs
set tabstop=4 "Tabs are two spaces wide
set softtabstop=4
set shiftwidth=4

set backspace=indent,eol,start "Backspace over these characters
set clipboard=unnamed "integrate with OS clipboard
set mouse=a "mouse support

set scrolloff=10 "keeps 10 lines before/after scroller
set sidescrolloff=5 "keeps 5 lines to right of screen

if &term =~ '^screen'
  set ttymouse=xterm2 "Fixes window resizing in tmux
end

"Fix vim slowness in tmux
set ttyfast
set notimeout
set ttimeout
set timeoutlen=500

set hlsearch "highlight search terms
set incsearch "search as you type
set ignorecase "ignore letter case
set smartcase "unless search has uppercase char in it

set cc=80 "highlight column 80 for better code

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
