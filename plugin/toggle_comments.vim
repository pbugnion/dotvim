
" Simple plugin for toggling comments.
" 
" This was written mostly to try out vim-script, and shouldn't be
" used by anyone apart from the author. Use NERDCommenter instead.
"
" Known issues: 
"  * breaks when the filetype is not known or not specified
" at startup [ FIXED ]
"  * breaks if the comment character contains special regular
" expression characters (eg $)  
"  * breaks if the comment character is longer than a single character

nnoremap <leader>c :call <SID>ToggleComments(".")<cr>
vnoremap <leader>c :call <SID>ToggleCommentsLines(line("'<"),line("'>"))<cr>

let s:ft_comments = { 
    \ 'fortran' : '!',
    \ 'vim'     : '"',
    \ 'python'     : '#',
    \ 'yaml'     : '#',
    \}

augroup toggle_comments
    autocmd BufEnter,BufRead * :call s:Setup(&filetype)
augroup END

function s:Setup(ft)
    if strlen(a:ft) == 0 || ! has_key(s:ft_comments,a:ft)
        let s:disabled = 1
    else
        let s:disabled = 0
        let s:comment_char = s:ft_comments[a:ft]
    endif
endfunction

function s:ToggleComments(line_no)
    if s:disabled 
        return
    endif

    let line = getline(a:line_no)
    if s:IsCommented(line)
        let new_line = s:CommentLine(line)
    else
        let new_line = s:UncommentLine(line)
    endif

    call setline(a:line_no,new_line)
endfunction

function s:ToggleCommentsLines(line_no_start,line_no_end)
    if s:disabled 
        return
    endif
    let is_first_line_commented = s:IsCommented(getline(a:line_no_start))

    let line_no = a:line_no_start
    while line_no <= a:line_no_end
        let line = getline(line_no)
        let new_line = is_first_line_commented ? s:CommentLine(line) : s:UncommentLine(line)
        call setline(line_no,new_line)
        let line_no += 1
    endwhile
endfunction

function s:CommentLine(line)
    return substitute(a:line,'^\([ \t]*\)'.s:comment_char,'\1','')
endfunction

function s:UncommentLine(line)
    return substitute(a:line,'^',s:comment_char,'')
endfunction

function s:IsCommented(line)
    let stripped_line = s:StripLeadingSpaces(a:line)
    return s:StartsWith(stripped_line,s:comment_char)
endfunction

function s:StripLeadingSpaces(line)
    return substitute(a:line,'^[\t ]*','','')
endfunction

function s:StartsWith(line,char)
    return stridx(a:line,a:char) == 0
endfunction

