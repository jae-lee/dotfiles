" #############################################################################
" General Settings

filetype plugin on
filetype plugin indent on
syntax on
set encoding=utf-8
set nu
" set relativenumber
set cc=80
set nocompatible
set noswapfile
set mouse=a
set hidden

" More natural split opening
" Opens new split panes to right and bottom, more natural than Vim's default
set splitbelow
set splitright

" Map jk to leave insert mode instead of <Esc>
inoremap jk <ESC>

" Setting tab/indent sizes
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

" #############################################################################
" Keybindings

nmap gt :NERDTreeToggle<CR>
nmap gs :Gstatus<CR>
nmap gc :Gcommit<CR>
nmap gb :Gblame<CR>

" Move between vim windows with <ctrl> + <h,j,k,l>
set wmw=0
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" #############################################################################
" Plugins

call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'kien/rainbow_parentheses.vim'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'

" Language packs
Plug 'sheerun/vim-polyglot'

" Git wrapper
Plug 'tpope/vim-fugitive'

" Restore file cursor position & folding
Plug 'vim-scripts/restore_view.vim'

call plug#end()

" #############################################################################
" Misc

" Recommended restore_view.vim setting
set viewoptions=cursor,folds,slash,unix
