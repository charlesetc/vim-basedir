
" Comments

inoreabbrev qpd   (**<c-o>a *)<c-o>`[

" Bash variable names

autocmd FileType bash,shell,sh inoremap qq "$"<C-o>i

" Logging and errors 

inoreabbrev qt   (raise_s [%sexp "unimplemented"] : 'z);
inoreabbrev ql   Log.info_s
inoreabbrev qpd   (**<c-o>a *)<c-o>`[

inoreabbrev qeq [%equal:<c-o>a ]<c-o>`[

" Deriving 
inoreabbrev qds [@@deriving sexp]
inoreabbrev qdso [@@deriving sexp_of]
inoreabbrev qdfso [@@deriving fields, sexp_of]
inoreabbrev qdc [@@deriving compare]
inoreabbrev qdsc [@@deriving sexp, compare]
inoreabbrev qdscf [@@deriving sexp, compare, fields]
inoreabbrev qdf [@@deriving fields]


" delete this one with a better solution if you can
inoreabbrev qp   (*<c-o>a *)<c-o>`[


inoreabbrev qd # <ESC>:r!date --iso<CR>kJA<CR>*

inoreabbrev qcom let command = Command.basic ~summary:"" (let%map_open.Command () = return () in fun () -> main ())

inoreabbrev qdl let open Deferred.Or_error.Let_syntax in 
inoreabbrev qopl let open Deferred.Or_error.Let_syntax in 
inoreabbrev qdol let open Deferred.Or_error.Let_syntax in 

inoreabbrev qrok return (Ok (<c-o>a))<c-o>`[
inoreabbrev qpe print_endline "<c-o>a";<c-o>`[
inoreabbrev qru return ()
inoreabbrev qrs (raise_s [%sexp "<c-o>a"] : 'z); <c-o>`[
inoreabbrev qrst (raise_s [%sexp "<c-o>a", (<ctrl-j> : <ctrl-j>)] : 'a); <c-o>`[
inoreabbrev qbm  (match%bind<c-o>a with <ctrl-j> )<c-o>`[
inoreabbrev qfp let feature_path = Feature.feature_path feature in
" inoreabbrev qb  \|<c-o> -> <ctrl-j> <c-o>`[


" inoreabbrev qhh ~here:[%here]