 ".vimrc file fs0ciety@fs0ciety MJ

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
Plugin 'tpope/vim-surround'
Plugin 'christoomey/vim-system-copy'
Plugin 'JamshedVesuna/vim-markdown-preview'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

"Other plugin stuff
let g:airline#extensionstabline#enabled=1
let g:airline_powerline_fonts=1
let g:airline_theme='luna'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

"Source scripts
source ~/.vim/scripts/rnutoggle.vim "Toggle relative numbers (Default on)	
source ~/.vim/scripts/togglehighlight.vim "Toggle hightlighted search

"Key Mapping
let mapleader=","
autocmd FileType ruby nnoremap <leader>c I#<ESC>
autocmd FileType vim nnoremap <leader>c I"<ESC>
autocmd FileType vim inoremap <leader>fc function! ()<CR><+++><CR>endfunction<ESC>3b<ESC>i
autocmd FileType ruby inoremap <leader>fc def ()<CR><+++><CR>end<ESC>3b<ESC>i
let g:ctrlp_map = '<c-p>' " For CtrlP Plugin
let g:ctrlp_cmd = 'CtrlP' 
noremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-l> :call ToggleRelativeNumbers()<CR>
nnoremap <C-h> :call ToggleHighlights()<CR>
"Ctrl + A will yank entire file
nnoremap <C-a> ggVGy<CR> 
"nnoremap da ggVGdd<CR>
nnoremap <C-z> <ESC>u
"leader plus ( will create () and put user inside
nnoremap <leader>" viw<ESC>a"<ESC>bi"<ESC>lel
nnoremap <leader>' viw<ESC>a'<ESC>bi'<ESC>ll
nnoremap <Space><Space> <kDivide><+++><CR>ciw
"- will delete the line and paste it on the line below
nnoremap - 0y$Do<ESC>p$i<ESC>
"Open .vimrc (ev) and source it (sv)
nnoremap ev :vsplit $MYVIMRC<CR>
nnoremap sv :source $MYVIMRC<CR>

"Colour stuff
syntax on
colorscheme wal
"color gruvbox
"color deus

"Other
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set number "line numbers enabled
set relativenumber "Relative line numbers 
set hlsearch "highlight all occurences of a word that was searched  
set noeb vb t_vb= "Beeping can fuck right off
