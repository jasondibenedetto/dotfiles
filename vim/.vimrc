" tab options
set shiftwidth=2
set tabstop=2

" {{{ plugins
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/plugins')
  Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-gitgutter'
  Plug 'ap/vim-css-color', { 'for': 'scss' }
  Plug 'arcticicestudio/nord-vim'
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'dag/vim-fish', { 'for': 'fish' }
  Plug 'jiangmiao/auto-pairs'
  Plug 'mxw/vim-jsx', { 'for': 'javascript' }
  Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
  Plug 'scrooloose/nerdcommenter'
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  Plug 'scrooloose/syntastic'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-sleuth'
  Plug 'tpope/vim-surround'
  Plug 'Valloric/MatchTagAlways', { 'for': 'html' }
  Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-complete' }
  Plug 'vim-airline/vim-airline'
call plug#end()
" }}}

" {{{ plugin settings
map <C-n> :NERDTreeToggle<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_scss_checkers=['scss_lint']

let g:jsx_ext_required = 0
" }}}

" {{{ Misc
" set title and allow hidden buffers
set title
set hidden
set list
set listchars=tab:»\ ,space:·,trail:·,eol:¬,nbsp:_,extends:>,precedes:<

" auto remove all trailing whitespace on :w
autocmd BufWritePre * :%s/\s\+$//e

" autosave files when focus is lost
:au FocusLost * :wa

" Line Numbers
set number
set numberwidth=3

" path will be base dir that vim is opened from
set path=$PWD/**

set nomodeline
set noshowmode
set shortmess=atToOI
set undolevels=1000
set updatetime=1500

" wild menu (autocompletion)"
set wildignore=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.jpeg,*.png,*.xpm,*.gif
set wildmode=list:longest,full

" backup and swap
set nobackup
set nowritebackup
set noswapfile

" search options
set hlsearch
set magic
set ignorecase
set smartcase

" folding
set foldenable
set foldmethod=marker
set foldlevel=0
set foldcolumn=0

colorscheme nord

set encoding=utf-8

set mouse=a
set showmatch
set cursorline
set scrolljump=10
set ttyfast
set pumheight=20
set diffopt+=context:3
set nostartofline
set visualbell

set wrap
set linebreak
set smartindent

set splitbelow
set splitright
" }}}

