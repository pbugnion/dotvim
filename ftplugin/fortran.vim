
"let fortran_free_source=1

set shiftwidth=1
set expandtab
set tabstop=1

nnoremap <leader>sp i&<cr>&<esc>

" C-like movement commands

nnoremap <buffer> ]m /^ *SUBROUTINE.*$/e+1<cr>
nnoremap <buffer> ]M /END<space>SUBROUTINE<cr>
nnoremap <buffer> [m ?^ *SUBROUTINE.*$?e+1<cr>
nnoremap <buffer> [M ?END<space>SUBROUTINE<cr>

onoremap <buffer> ]m /^ *SUBROUTINE.*$/e+1<cr>
onoremap <buffer> ]M /END<space>SUBROUTINE<cr>
onoremap <buffer> [m ?^ *SUBROUTINE.*$?e+1<cr>
onoremap <buffer> [M ?END<space>SUBROUTINE<cr>

vnoremap <buffer> ]m /^ *SUBROUTINE.*$/e+1<cr>
vnoremap <buffer> ]M /END<space>SUBROUTINE<cr>
vnoremap <buffer> [m ?^ *SUBROUTINE.*$?e+1<cr>
vnoremap <buffer> [M ?END<space>SUBROUTINE<cr>

" Abbreviations

iabbrev <buffer> imp IMPLICIT NONE
iabbrev <buffer> true .true.
iabbrev <buffer> false .false.

iabbrev <buffer> int INTEGER
iabbrev <buffer> intin INTEGER,INTENT(in)
iabbrev <buffer> intinout INTEGER,INTENT(inout)
iabbrev <buffer> intout INTEGER,INTENT(out)

iabbrev <buffer> dp REAL(dp)
iabbrev <buffer> dpin REAL(dp),INTENT(in)
iabbrev <buffer> dpinout REAL(dp),INTENT(inout)
iabbrev <buffer> dpout REAL(dp),INTENT(out)

iabbrev <buffer> log LOGICAL
iabbrev <buffer> login LOGICAL,INTENT(in)
iabbrev <buffer> loginout LOGICAL,INTENT(inout)
iabbrev <buffer> logout LOGICAL,INTENT(out)
