
call pathogen#infect() " Use Pathogen plugin to handle runtime

au BufRead,BufNewFile *.txt setlocal ft=txt
au BufRead,BufNewFile *.md setlocal ft=md
au BufNewFile test*.py read ~/.vim/templates/python_unittest.py
au BufNewFile *.tex read ~/.vim/templates/latex.tex

set tabstop=4
set shiftwidth=4
set expandtab

filetype plugin indent on
syntax on

au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview
let g:SuperTabClosePreviewOnPopupClose = 1
let g:EasyMotion_leader_key = '<Leader>'
" let g:VimuxOrientation = "v"
" let g:VimuxUseNearestPane = 1

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

" Toggle taglist
nnoremap <leader>tt :TlistToggle<cr>

" git mappings
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>dp :diffput<cr>

" Visual mode mappings
vnoremap <leader>dp :diffput<cr>

source ~/.vim/vim_local
