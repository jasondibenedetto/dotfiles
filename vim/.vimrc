if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugins')

Plug 'pangloss/vim-javascript'
Plug 'arcticicestudio/nord-vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'bling/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'airblade/vim-gitgutter'

" initialize plugin system
call plug#end()

" NERDTree settings
let NERDTreeShowHidden=1
autocmd vimenter * NERDTree

" set standard encoding
scriptencoding utf-8
set encoding=utf-8

" use vim settings, rather then vi settings
set nocompatible

" line numbers are good
set number

" allow backspace in insert mode
set backspace=indent,eol,start

" store lots of :cmdline history
set history=1000

" show incomplete cmds down the bottom
set showcmd

" show current mode down the bottom
set showmode

" disable cursor blink
set gcr=a:blinkon0

" no sounds
set visualbell

" reload files changed outside vim
set autoread

" this makes vim act like all other editors
set hidden

" turn on syntax highlighting
syntax on

" indentation
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

filetype plugin on
filetype indent on

" display tabs and trailing spaces visually
set list listchars=eol:¬,tab:»»,trail:·,extends:>,precedes:<,space:·

" don't wrap lines
set nowrap

" wrap lines at convenient points
set linebreak

" scrolling
set scrolloff=8
set sidescrolloff=15
set sidescroll=1

" syntax theme
colorscheme nord
