" plugins
call plug#begin('~/.vim/plugged')
  Plug 'airblade/vim-gitgutter'
  Plug 'ap/vim-css-color', { 'for': 'scss' }
  Plug 'arcticicestudio/nord-vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'mxw/vim-jsx', { 'for': 'javascript.jsx' }
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
  Plug 'prettier/vim-prettier', { 'for': ['javascript.jsx', 'scss', 'json'] }
  Plug 'scrooloose/nerdtree'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-surround'
  Plug 'Valloric/MatchTagAlways', { 'for': 'html' }
  Plug 'vim-airline/vim-airline'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'w0rp/ale'
  Plug 'prabirshrestha/asyncomplete.vim'
call plug#end()

" plugin settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let NERDTreeShowHidden=1
let NERDTreeMouseMode=2
let NERDTreeMinimalUI=1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" theme
colorscheme nord
set termguicolors

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

