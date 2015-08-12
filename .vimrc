" #############################################################################
" General Settings

filetype plugin on
filetype plugin indent on
syntax on
set encoding=utf-8
set nu
set relativenumber
set cc=80
set nocompatible
set noswapfile

" More natural split opening
set splitbelow
set splitright

" Map jk to leave insert mode instead of <Esc>
inoremap jk <ESC>

" Map the leader key to something more accessible rather than \
let mapleader = ","

" Vim will treat numbers with leading zeros as decimals, not octal
set nrformats=

" Save when losing focus of vim
au FocusLost * silent! wa

" Setting tab/indent sizes
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

" #############################################################################
" Colorscheme

" set background=dark
let g:hybrid_use_Xresources = 1
colorscheme hybrid

" Fix colorscheme background http://is.gd/Df5cT7
if exists('$TMUX')
  set term=screen-256color
endif

" tmux will only forward escape sequences to the terminal if surrounded by a DCS sequence
" http://sourceforge.net/mailarchive/forum.php?thread_name=AANLkTinkbdoZ8eNR1X2UobLTeww1jFrvfJxTMfKSq-L%2B%40mail.gmail.com&forum_name=tmux-users
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" for tmux to automatically set paste and nopaste mode at the time pasting (as
" happens in VIM UI)
function! WrapForTmux(s)
  if !exists('$TMUX')
    return a:s
  endif

  let tmux_start = "\<Esc>Ptmux;"
  let tmux_end = "\<Esc>\\"

  return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
endfunction

let &t_SI .= WrapForTmux("\<Esc>[?2004h")
let &t_EI .= WrapForTmux("\<Esc>[?2004l")

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

" #############################################################################
" Awesome indents

set list
set listchars=tab:>·,trail:·,extends:…,precedes:…,nbsp:&

" #############################################################################
" Keybindings

nmap gt :NERDTreeToggle<CR>
nmap gs :Gstatus<CR>
nmap gc :Gcommit<CR>
nmap gb :Gblame<CR>
nmap <F8> :TagbarToggle<CR>

" Move between vim windows with <ctrl> + <h,j,k,l>
set wmw=0
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" #############################################################################
" Vundle

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'mattn/emmet-vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'lervag/vimtex'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'bling/vim-airline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/SearchComplete'
Plugin 'kana/vim-textobj-user'
Plugin 'kana/vim-textobj-entire'

call vundle#end()

" #############################################################################
" Misc

" Better Rainbow Parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
let g:rbpt_max = 6

" add a space between the comment delimiter and text
let NERDSpaceDelims=1

" vim-airline
let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline_left_sep=''
let g:airline_right_sep=''

au BufReadPost *.hbs set syntax=mustache
