
function MatchSubName()
    
    execute "normal! ?SUBROUTINE$\<cr>yy"

    echom @@


endfunction
