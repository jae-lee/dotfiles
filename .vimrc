" Map jk to leave insert mode instead of <Esc>
inoremap jk <ESC>

" Map the leader key to something more accessible rather than \
let mapleader = ","

filetype plugin indent on
syntax on
set encoding=utf-8

" For Pathogen plugins
execute pathogen#infect()

" Setting tab/indent sizes
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

" Move between vim windows with <ctrl> + <h,j,k,l>
set wmw=0
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" More natural split opening
set splitbelow
set splitright
