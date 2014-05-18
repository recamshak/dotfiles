set nocompatible              " be iMproved, required
filetype off                  " required

" use 2 spaces for tab
set expandtab
set softtabstop=2
set tabstop=2
set shiftwidth=2

" close a buffer with ctrl-w
"map <C-w> :bd<CR>

let mapleader = ","

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

syntax enable
set background=dark
colorscheme solarized

" always shows the status bar
set laststatus=2
set rtp+=/home/bibi/.local/lib/python2.7/site-packages/powerline/bindings/vim

Bundle 'pangloss/vim-javascript'
Plugin 'git://git.wincent.com/command-t.git'

call vundle#end()            " required
filetype plugin indent on    " required
