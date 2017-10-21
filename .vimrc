" .vimrc file fs0ciety@fs0ciety MJ

set nocompatible            
filetype off                 

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'vim-airline/vim-airline' "Airline status bar
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-syntastic/syntastic' "Syntax check
Plugin 'scrooloose/nerdtree' "NerdTree, file tree 
Plugin 'ctrlpvim/ctrlp.vim' "CtrlP
Plugin 'dylanaraps/wal.vim' "Pywal

" All of your Plugins must be added before the following line
call vundle#end()           
filetype plugin indent on 

"Other plugin stuff
let g:airline#extensionstabline#enabled=1
let g:airline_powerline_fonts=1
let g:airline_theme='luna'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

"Key Mapping 
map <C-n> :NERDTreeToggle<CR>
nmap <C-l> :set invnumber <CR> 
let g:ctrlp_map = '<c-p>' " For CtrlP Plugin
let g:ctrlp_cmd = 'CtrlP' 
"leader plus ( will create () and put user inside
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i
nmap <C-a> ggVGy<CR> 
"Ctrl + A will yank entire file

"Colour stuff
syntax on
"color gruvboxo
"color deus
colorscheme wal

"Other
set tabstop=2
set number "line numbers enabled
set hlsearch "highlight all occurences of a word that was searched
"let mapleader="-"

set relativenumber
