" ===== Term =====

if has('nvim')
  au! TermClose * call feedkeys("_")
endif

" ===== Supertab =====

augroup supertab
  au!
  au! Filetype * 
        \ if &omnifunc != '' | 
        \   call SuperTabChain(&omnifunc, "<c-p>") | 
        \   call SuperTabSetDefaultCompletionType("<c-x><c-u>") | 
        \ endif
augroup end

" ===== Shell =====
 
augroup shell_keywords
  au!
  au! FileType sh set iskeyword=@,48-57,_,192-255,-
augroup END

" ===== Filetypes =====

au! FileType sexp,lisp,clojure,scheme RainbowParentheses
au! BufRead,BufNewFile *.pp        set filetype=ocaml syntax=ocaml
au! BufRead,BufNewFile *.mdx        set filetype=ocaml syntax=ocaml
au! BufRead,BufNewFile overrides set filetype=vim
au! BufRead,BufNewFile jbuild set filetype=scheme

au! BufRead,BufNewFile jbuild map <buffer> <F8> :%! grep -P -v "(runtest\|feature-subtree)"<CR>
au! BufRead,BufNewFile jbuild map <buffer> <F9> :%! grep -P -v "(runtest\|feature-subtree)"<CR>


" ===== Autoformatting =====

augroup fmt
  autocmd!
  autocmd BufWritePre *.ml :Neoformat
  autocmd BufWritePre *.mli :Neoformat
  autocmd BufWritePre *.re :Neoformat
  autocmd BufWritePre *.rei :Neoformat
augroup END

" augroup fmt
"     autocmd!
"     autocmd BufWritePre *  Neoformat
" augroup END
 

" ===== Misc =====
 
au! FileType ocaml :syntax sync minlines=1000
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif


" ===== Colorschemes =====

" au! BufEnter *.* colorscheme mango
" au! BufEnter *.md colorscheme Atelier_CaveDark

" au! BufEnter,BufRead,BufNewFile *.md,*.mkd set textwidth=70

" ===== Terminal =====

au! BufRead,BufEnter term://* startinsert!

