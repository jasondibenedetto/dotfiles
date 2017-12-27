" plugins {{{
call plug#begin()

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'airblade/vim-gitgutter'
Plug 'arcticicestudio/nord-vim', { 'branch': 'develop' }
Plug 'bling/vim-bufferline'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'editorconfig/editorconfig-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'moll/vim-bbye'
Plug 'mxw/vim-jsx'
Plug 'ntpeters/vim-better-whitespace'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdtree'
Plug 'styled-components/vim-styled-components'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'w0rp/ale'
Plug 'wokalski/autocomplete-flow'

call plug#end()

" }}}
" settings {{{
set clipboard=unnamed
set cursorline
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
set nowritebackup
set number
set numberwidth=3
set shiftwidth=2
set showmatch
set smartcase
set splitbelow
set splitright
set visualbell
set wildmode=full

if has('nvim')
  set termguicolors
endif

" }}}
" mappings {{{
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprev<CR>

" }}}
" arcticicestudio/nord-vim {{{
let g:nord_uniform_diff_background = 1

colorscheme nord

" }}}
" w0rp/ale {{{
let g:ale_linters = {
      \ 'javascript': ['prettier', 'eslint', 'flow'],
      \ 'jsx': ['stylelint']
      \ }
let g:ale_fixers = {
      \ 'javascript': ['prettier', 'eslint']
      \ }
let g:ale_linter_aliases = { 'jsx': 'css' }
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_use_local_config = 1

" }}}
" Shougo/deoplete.nvim {{{
let g:deoplete#enable_at_startup = 1

" }}}
" pangloss/vim-javascript {{{
let g:javascript_plugin_flow = 1

" }}}
" mxw/vim-jsx {{{
let g:jsx_ext_required = 0

" }}}
" scrooloose/nerdtee {{{
let NERDTreeShowHidden = 1
let NERDTreeMouseMode = 2
let NERDTreeMinimalUI = 1
let NERDTreeIgnore = ['.DS_Store']

augroup nerdtree
  autocmd!

  autocmd StdinReadPre * let s:std_in = 1
  autocmd VimEnter * if argc() == 1
        \ && isdirectory(argv()[0])
        \ && !exists('s:std_in') | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
augroup END

" }}}
" terryma/vim-multiple-cursors {{{
function! Multiple_cursors_before() abort
  if exists('g:deoplete#disable_auto_complete')
    let g:deoplete#disable_auto_complete = 1
  endif
endfunction

function! Multiple_cursors_after() abort
  if exists('g:deoplete#disable_auto_complete')
    let g:deoplete#disable_auto_complete = 0
  endif
endfunction

" }}}
" ntpeters/vim-better-whitespace {{{
augroup vim_better_whitespace
  autocmd!

  autocmd BufEnter * EnableStripWhitespaceOnSave
augroup END
" }}}

" junegunn/fzf.vim {{{
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" }}}
" editorconfig/editorconfig.vim {{{
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" }}}
" vim-airline/vim-airline {{{
let g:airline_theme = 'nord'
let g:airline_powerline_fonts = 1
let g:airline_extensions = ['branch', 'bufferline', 'fugitiveline', 'ale', 'hunks']

" }}}
" bling/vim-bufferline {{{
let g:bufferline_echo = 0

" }}}
