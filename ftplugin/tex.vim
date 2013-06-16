
set wrap
set linebreak
set textwidth=79

nnoremap <leader>ll :!pdflatex %<cr>
nnoremap <leader>lv :!evince %:r.pdf<cr> &
