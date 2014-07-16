" Pathogen
execute pathogen#infect()

" Colorscheme
colorscheme base16-ocean
set background=dark

" Backspace deletes like most programs in insert mode
set expandtab shiftwidth=2 softtabstop=2

" Make lines of code shorter than 80
set cc=80

" Use Vim settings, rather than Vi settings
set nocompatible  

" No swap file
set noswapfile

" Map jk to leave insert mode instead of <Esc>
inoremap jk <ESC>

" Map the leader key to something more accessible rather than \
let mapleader = ","

" General good stuff
filetype plugin on
filetype plugin indent on
syntax on
set encoding=utf-8
set nu " line numbers

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

" Keybindings
nmap gt :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>

" Better Rainbow Parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" add a space between the comment delimiter and text
let NERDSpaceDelims=1

" vim-airline
let g:airline_powerline_fonts = 1
