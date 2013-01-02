
call pathogen#infect() " Use Pathogen plugin to handle runtime

syntax on
filetype plugin indent on
colorscheme delek

au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

set incsearch
set wildmenu
set path=$PWD/**
set hidden

