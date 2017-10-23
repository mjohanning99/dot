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

"Source scripts
source ~/.vim/scripts/rnutoggle.vim "Toggle relative numbers

"Key Mapping
let mapleader=","
let g:ctrlp_map = '<c-p>' " For CtrlP Plugin
let g:ctrlp_cmd = 'CtrlP' 
noremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-l> :call ToggleRelativeNumbers()
"Ctrl + A will yank entire file
nnoremap <C-a> ggVGy<CR> 
nnoremap <C-z> <ESC>u
inoremap <C-z> <ESC>u
"leader plus ( will create () and put user inside
nnoremap <leader>" viw<ESC>a"<ESC>bi"<ESC>lel
nnoremap <leader>' viw<ESC>a'<ESC>bi'<ESC>ll
inoremap <leader>fv function! ()<CR><+++><CR>endfunction<ESC>3b<ESC>i
nnoremap <Space><Space> <kDivide><+++><CR>ciw
"- will delete the line and paste it on the line below
nnoremap - 0y$Do<ESC>p$i<ESC>
"Open .vimrc (ev) and source it (sv)
nnoremap ev :vsplit $MYVIMRC<CR>
nnoremap sv :source $MYVIMRC<CR>

"Colour stuff
syntax on
"color gruvboxo
"color deus
colorscheme wal

"Other
set tabstop=2
set number "line numbers enabled
set relativenumber "Relative line numbers 
set hlsearch "highlight all occurences of a word that was searched  
set noeb vb t_vb= "Beeping can fuck right off
