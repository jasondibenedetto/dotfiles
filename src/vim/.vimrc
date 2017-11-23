" plugins
call plug#begin('~/.vim/plugged')
  Plug 'airblade/vim-gitgutter'
  Plug 'arcticicestudio/nord-vim'
  Plug 'itchyny/lightline.vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'mxw/vim-jsx'
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'pangloss/vim-javascript'
  Plug 'scrooloose/nerdtree'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'w0rp/ale'
call plug#end()

" plugin settings
let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier', 'eslint']
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_use_local_config = 1

let NERDTreeShowHidden=1
let NERDTreeMouseMode=2
let NERDTreeMinimalUI=1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
      \ 'left': [['mode', 'paste'],
      \ ['gitbranch', 'readonly', 'filename', 'modified']],
      \ 'right': [['filetype']]
      \ },
      \ 'component_function': {
      \ 'gitbranch': 'fugitive#head'
      \ }
      \ }

" theme
colorscheme nord

" indentation
set expandtab
set linebreak
set shiftwidth=2
set smartindent
set smarttab
set tabstop=2
set wrap

" invisibles
set list
set listchars=tab:»\ ,space:·,trail:·,eol:¬,nbsp:_,extends:>,precedes:<

" auto remove all trailing whitespace on :w
autocmd BufWritePre * :%s/\s\+$//e

" autosave files when focus is lost
:au FocusLost * :wa

" line numbers
set number
set numberwidth=3

" backups
set nobackup
set noswapfile
set nowritebackup

" path will be base dir that vim is opened from
set path=$PWD/**

" search
set hlsearch
set ignorecase
set magic
set smartcase
set wildmode=full

" folding
set foldmethod=marker
set foldlevel=0

" other
set clipboard=unnamed
set cursorline
set diffopt=filler,vertical
set encoding=utf-8
set hidden
set lazyredraw
set mouse=a
set nomodeline
set noshowmode
set nostartofline
set shortmess=aIT
set showmatch
set splitbelow
set splitright
set visualbell
