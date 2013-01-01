
" Extra syntax highlighting rules designed to go on top of 
" Ajit Thakar's fortran syntax file.
" Specifically for CASINO.
"
" Developper: Pascal Bugnion <pob24@cam.ac.uk>
" Version: 0.1
"
" Installation:
" This file should go under ~/.vim/after/syntax
" and should be named fortran.vim
"
" History:
" April 2012: Initial version.

"" ======================================================================= ""

" Highlight lines that go beyone 79 characters in red.
syn match fortranLineLen       excludenl "^.\{80,}$"lc=79
hi def link fortranLineLen Error

