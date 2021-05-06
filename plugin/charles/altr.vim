
" ===== Altr =====

call altr#remove_all()
call altr#define('%.ml', '%_intf.ml', '%.mli')

nnoremap ,p :call altr#forward()<CR>
