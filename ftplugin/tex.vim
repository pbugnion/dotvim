
set wrap
set linebreak
set textwidth=79

nnoremap <leader>ll :!pdflatex %<cr>
nnoremap <leader>lv :!evince %:r.pdf<cr> &

" Map id to inside $$ and ad to outside $$.
" Obsoleted if using latex-boc
"vnoremap id <Esc>T$vt$
"vnoremap ad <Esc>F$vf$
"onoremap id :<c-u>normal! T$vt$<cr>
"onoremap ad :<c-u>normal! F$vf$<cr>

nnoremap <leader>tt :LatexTOCToggle<enter>

" Mappings related to latexbox
inoremap [[ \begin{
imap ]] <Plug>LatexCloseCurEnv
nmap <leader>]] <Plug>LatexCloseCurEnv
nmap <F5> <Plug>LatexChangeEnv
imap <F7> v<Plug>LatexWrapSelection
vmap <F7> <Plug>LatexWrapSelection
vmap <S-F7> <Plug>LatexEnvWrapSelection
