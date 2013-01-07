
call pathogen#infect() " Use Pathogen plugin to handle runtime

syntax on
filetype plugin indent on

au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

set incsearch
set wildmenu
set path=$PWD/**
set hidden
let mapleader = ","

" Insert-mode mappings
"
" Map <C-u> to uppercase word under cursor.
inoremap <C-u> <esc>viwU<esc>wa
inoremap jk <esc>

" Normal-mode mappings
"
" Remap ';' -> ':'
nnoremap ; :

" Remap ,ww to switch window.
nnoremap <leader>ww <c-w>w

" Open vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>so :source $MYVIMRC<cr>

source ~/.vim/vim_local
