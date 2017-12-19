" plugins
call plug#begin('~/.vim/plugged')
  Plug 'airblade/vim-gitgutter'
  Plug 'ap/vim-buftabline'
  Plug 'arcticicestudio/nord-vim'
  Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
  Plug 'itchyny/lightline.vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'maximbaz/lightline-ale'
  Plug 'moll/vim-bbye'
  Plug 'mxw/vim-jsx'
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'pangloss/vim-javascript'
  Plug 'scrooloose/nerdtree'
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'styled-components/vim-styled-components'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'w0rp/ale'
  Plug 'wokalski/autocomplete-flow'
call plug#end()

" w0rp/ale
let g:ale_linters = {
      \ 'javascript': ['prettier', 'eslint', 'flow'],
      \ 'jsx': ['stylelint']
      \ }
let g:ale_fixers = {
      \ 'javascript': ['prettier', 'eslint']
      \ }
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_linter_aliases = { 'jsx': 'css' }

" Shougo/deoplete.nvim
let g:deoplete#enable_at_startup = 1

" pangloss/vim-javascript
let g:javascript_plugin_flow = 1

" mxw/vim-jsx
let g:jsx_ext_required = 0

" scrooloose/nerdtee
let NERDTreeShowHidden=1
let NERDTreeMouseMode=2
let NERDTreeMinimalUI=1
let NERDTreeIgnore=['.DS_Store']
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" itchyny/lightline.vim
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
      \ 'left': [['mode', 'paste'],
      \ ['gitbranch', 'readonly', 'filename', 'modified']],
      \ 'right': [['linter_errors', 'linter_warnings', 'linter_ok'], ['filetype']]
      \ },
      \ 'component_function': {
      \ 'gitbranch': 'fugitive#head'
      \ },
      \ 'component_type': {
      \ 'linter_warnings': 'warning',
      \ 'linter_errors': 'error'
      \ },
      \ 'component_expand': {
      \ 'linter_warnings': 'lightline#ale#warnings',
      \ 'linter_errors': 'lightline#ale#errors',
      \ 'linter_ok': 'lightline#ale#ok'
      \ }
      \ }

" terryma/vim-multiple-cursors
function! Multiple_cursors_before()
  if exists('g:deoplete#disable_auto_complete')
    let g:deoplete#disable_auto_complete = 1
  endif
endfunction

function! Multiple_cursors_after()
  if exists('g:deoplete#disable_auto_complete')
    let g:deoplete#disable_auto_complete = 0
  endif
endfunction

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
set numberwidth=5

" backups
set nobackup
set noswapfile
set nowritebackup

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
set cmdheight=2

" keybindings
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprev<CR>
