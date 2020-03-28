" plugins {{{
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source '~/.vimrc'
endif

call plug#begin()

Plug '/usr/local/opt/fzf'
Plug 'airblade/vim-gitgutter'
Plug 'arcticicestudio/nord-vim', { 'branch': 'develop' }
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
Plug 'LnL7/vim-nix'
Plug 'maximbaz/lightline-ale'
Plug 'pangloss/vim-javascript', { 'for': 'javascript.jsx' }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'w0rp/ale'

call plug#end()

" }}}
" settings {{{
set clipboard=unnamed
set diffopt=filler,vertical
set expandtab
set foldlevel=0
set hidden
set hlsearch
set ignorecase
set lazyredraw
set linebreak
set list
set listchars=tab:»\ ,space:·,trail:·,eol:¬,nbsp:_,extends:>,precedes:<
set modelines=0
set mouse=a
set nobackup
set nomodeline
set noshowmode
set nostartofline
set noswapfile
set nowrap
set nowritebackup
set number
set numberwidth=3
set shiftwidth=2
set showmatch
set smartcase
set splitbelow
set splitright
set textwidth=80
set visualbell
set wildmode=full

" }}}
" arcticicestudio/nord-vim {{{
let g:nord_uniform_diff_background = 1
let g:nord_underline = 1
let g:nord_italic = 1
let g:nord_italic_comments = 1
let g:nord_uniform_status_lines = 1

" }}}
" w0rp/ale {{{
let g:ale_linters = {
      \ 'javascript': ['prettier', 'eslint', 'flow'],
      \ 'typescript': ['prettier', 'tslint', 'tsserver', 'typecheck']
      \ }
let g:ale_fixers = {
      \ 'javascript': ['prettier', 'eslint'],
      \ 'typescript': ['prettier', 'tslint']
      \ }
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_use_local_config = 1

" }}}
" pangloss/vim-javascript {{{
let g:javascript_plugin_flow = 1

" }}}
" junegunn/fzf.vim {{{
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" }}}
" itchyny/lightline.vim {{{
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
      \ 'left': [['mode', 'paste'],
      \ ['gitbranch', 'readonly', 'relativepath', 'modified']],
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
      \ },
      \ 'component': {
      \   'lineinfo': '⭡ %3l:%-2v',
      \ },
      \ 'separator': { 'left': "", 'right': "" },
      \ 'subseparator': { 'left': "", 'right': "'" }
      \ }

" }}}
" mappings {{{
let g:mapleader = '\'

nnoremap <leader><space> :Files<CR>
nnoremap <leader>g :GFiles<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>- :NERDTreeToggle<CR>

nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprev<CR>

nnoremap <leader><Down> <C-W><C-J>
nnoremap <leader><Up> <C-W><C-K>
nnoremap <leader><Right> <C-W><C-L>
nnoremap <leader><Left> <C-W><C-H>

" }}}
" colorscheme {{{
colorscheme nord

" }}}
