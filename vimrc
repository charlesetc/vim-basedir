
" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
	set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/
set runtimepath+=~/.jsx/after
set encoding=utf-8

call plug#begin('~/.vim/plugged')
Plug 'goatslacker/mango.vim'
Plug 'kana/vim-altr'
Plug 'ervandew/supertab'
Plug 'sbdchd/neoformat'
Plug 'tpope/vim-commentary'
Plug 'kana/vim-textobj-user'
Plug 'ap/vim-buftabline'
Plug 'elixir-lang/vim-elixir'
Plug 'ElmCast/elm-vim'
Plug 'vito-c/jq.vim'
Plug 'ocaml/vim-ocaml'
" Plug 'tpope/vim-surround'

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim', {'pinned': 1}

" This screws up my searching:
" Never use it.
" Plug 'vim-scripts/restore_view.vim'

call plug#end()


let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }
" Folding
" set foldmethod=indent
" set foldlevel=0
" set foldnestmax=2
nnoremap <SPACE> :
nnoremap <PageUp> <C-u>
nnoremap <PageDown> <C-d>

nnoremap % %%v%


" Required:
filetype plugin indent on


if executable('ocamlmerlin')
  " To set the log file and restart:
  let s:ocamlmerlin=substitute(system('which ocamlmerlin'),'ocamlmerlin\n$','','') . "../share/ocamlmerlin/vim/"
  execute "set rtp+=".s:ocamlmerlin
endif
if executable('refmt')
  let s:reason=substitute(system('which refmt'),'refmt\n$','','') . "../share/reason/editorSupport/VimReason"
  execute "set rtp+=".s:reason
  let g:syntastic_reason_checkers=['merlin']
endif

set nocompatible              " be iMproved, required
filetype off                  " required

set incsearch

set nonu


let g:latex_to_unicode_auto = 1
let g:acp_enableAtStartup = 0
" Use smartcase.
" Set minimum syntax keyword length.
let g:easytags_async = 1
let g:easytags_auto_update = 0
  
set completeopt=menuone,menu,longest


" Leader
" Make space leader.
let mapleader=","
let maplocalleader=",<F10>"
noremap , <Nop>


noremap ,1 :buffer 1<CR>
noremap ,2 :buffer 2<CR>
noremap ,3 :buffer 3<CR>
noremap ,4 :buffer 4<CR>
noremap ,5 :buffer 5<CR>
noremap ,6 :buffer 6<CR>

" some more folding
" autocmd FileType ocaml noremap ,, :bn<CR>
autocmd FileType ocaml nnoremap ,t :MerlinTypeOf<CR>
autocmd FileType ocaml vnoremap ,t :MerlinTypeOfSel
autocmd FileType ocaml noremap ,g :MerlinLocate<CR>
autocmd FileType ocaml noremap ,r :MerlinLocateIntf<CR>
autocmd FileType ocaml noremap ,, :MerlinErrorCheck<CR>
autocmd FileType reason noremap ,t :MerlinTypeOf<CR>
autocmd FileType reason noremap ,f :MerlinLocate<CR>
" autocmd FileType purescript noremap ,, :Prebuild!<CR>
autocmd FileType purescript noremap ,t :Ptype<CR><CR>
autocmd FileType purescript noremap ,a :PaddType<CR><CR>
autocmd FileType purescript noremap ,f :Pgoto<CR>

" nnoremap ,, :bn<CR>:echo " "<CR>
noremap m :bn<CR>:echo " "<CR>
noremap M :bp<CR>:echo " "<CR>

inoremap ,. <C-x><C-o>

nnoremap ,m :bn<CR>:echo " "<CR>
nnoremap ,M :bp<CR>:echo " "<CR>
noremap ,w :w<CR>
noremap ,o :only<CR>
inoremap yw :w<CR>
noremap ,q :qa!<CR>
noremap ,s :%s/
noremap ,<Tab> :bn<CR>
noremap ,vv :e ~/.vimrc<CR>
noremap ,x  :x<CR>
noremap ,vs :so ~/.vimrc<CR>
noremap ,d <C-w>j:close<CR>:echo " "<CR>
noremap ,D <C-w>k:close<CR>:echo " "<CR>
noremap ,z :bd<CR>:echo " "<CR>
noremap ,r <Nop>
noremap ,E :Exp<CR>
noremap ,i :vsplit<CR>:echo " "<CR>
noremap ,e :split<CR>:echo " "<CR>
noremap ,* :vertical ball<CR>
noremap ,a g<C-g>
vnoremap <Backspace> :Commentary<CR>
noremap ,c :Commentary<CR>:echo " "<CR>
noremap ,g :Gblame<CR>
noremap ,<ESC> :bd<CR>:echo " "<CR>
noremap ,` <C-w>j:close<CR>
noremap ,` <C-w>j:close<CR>
" noremap ,, :w<CR>

noremap ,r :!clear;make<CR>

" pretty awesome:
noremap ,ve ^i <ESC>vk$s
noremap ,vn a<CR><ESC>

"" Remapping

imap <S-TAB> <ESC>
map <S-TAB> <ESC>
nmap <S-TAB> i
noremap <C-n> }
noremap <C-e> {

nnoremap < <<
nnoremap > >>
nnoremap vv V

" Visual
noremap <C-v> v
noremap v <C-v>

" Moving around
nmap do ddeo

nmap ,j <C-w>j
nmap ,k <C-w>k
nmap ,l <C-w>l
nmap ,h <C-w>h
nmap ,J <C-w>J
nmap ,K <C-w>K
nmap ,L <C-w>L
nmap ,H <C-w>H

nnoremap <S-o> o<ESC>

"" Commands

command! W w
" command! Jekyll Jpost!

"" Anonymous Settings

" Syntax
syntax on
highlight Normal ctermfg=Black ctermbg=None
" highlight Comment ctermfg=Gray
highlight NonText ctermfg=Gray

" Natural Splitting
set splitbelow
set splitright

" Tabs (indent)
set backspace=2
set autoindent
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
"set hlsearch  

" Vertical split
set laststatus=0
set fillchars+=vert:\ 


"" Spelling
set complete+=kspell
"" Languages
" Go        
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
let g:go_imports_autosave = 1
let g:go_doc_keywordprg_enabled = 0
au FileType go nmap ,r <Plug>(go-test)

ab pdb import pdb; pdb.set_trace()

" Python
au FileType py set tabstop=8
au FileType py set expandtab
au FileType py set softtabstop=4
au FileType py set shiftwidth=4
au FileType py nmap ,r <Plug>(go-test)

" Rust

au FileType rs set tabstop=4
au FileType rs set shiftwidth=4

" Clojure 
let g:clojure_align_multiline_strings = 1
let g:clojure_align_subforms = 1

" Markdown
autocmd BufNewFile,BufRead *.md set spell
autocmd BufNewFile,BufRead *.markdown set spell


" Fake scrolling
nnoremap dg <C-u>
nnoremap gd <C-d>
inoremap <C-b> <Left>
inoremap <C-f> <Right>

" colorscheme Tomorrow-Night-Eighties
" colorscheme dracula
colorscheme mango
" colorscheme paramount

set nohlsearch

highlight search ctermfg=red ctermbg=none

highlight todo ctermfg=black ctermbg=220
highlight linenr ctermfg=darkgrey ctermbg=None
highlight cursorlinenr ctermfg=74 ctermbg=None " blue

highlight normal ctermbg=None

highlight VertSplit ctermfg=black ctermbg=black
highlight StatusLine ctermbg=black ctermfg=grey
highlight StatusLineNC ctermbg=white ctermfg=black

highlight Visual ctermbg=lightgreen
hi TabLine      ctermfg=darkgrey  ctermbg=None  cterm=NONE
hi TabLineFill  ctermfg=Black  ctermbg=None     cterm=NONE
hi TabLineSel   ctermfg=white  ctermbg=black  cterm=NONE
hi Folded   ctermfg=75  ctermbg=Lightgrey  cterm=NONE

" :syntax off

function! NextClosedFold(dir)
    let cmd = 'norm!z' . a:dir
    let view = winsaveview()
    let [l0, l, open] = [0, view.lnum, 1]
    while l != l0 && open
        exe cmd
        let [l0, l] = [l, line('.')]
        let open = foldclosed(l) < 0
    endwhile
    if open
        call winrestview(view)
    endif
endfunction

let g:html_use_css = 1

" awesome for colemak
imap yw <ESC>
imap Yw <ESC>
imap YW <ESC>
" autocmd FileType ocaml source /home/charles/.opam/4.02.3/share/ocp-indent/vim/indent/ocaml.vim

" set nu
" set rnu
" set norelativenumber

" Commentary
autocmd FileType sml setlocal commentstring=(*\ %s\ *)
noremap ,n :Files<CR>

" let &colorcolumn=join(range(81,999),",")
" highlight ColorColumn ctermbg=253

" Stuff for talk
set noruler
set noshowmode
set shortmess+=F
set hidden
set noswapfile
vnoremap <CR> <ESC>j
vnoremap <Up> <ESC>k
vnoremap <Down> <ESC>j
" nnoremap v V
au BufWinEnter * syntax keyword Keyword notation lexer parser at package dependencies in
command! Lexer e ~/code/relit/examples/regex_example/regex_parser/lexer.mll
command! Parser e ~/code/relit/examples/regex_example/regex_parser/parser.mly

"separator
set fillchars+=vert:│
" hi VertSplit ctermfg=none cterm=none ctermbg=none

nnoremap U <C-r>


" for insert mode cursor
let &t_SI="\033[5 q" " start insert mode
let &t_EI="\033[1 q" " end insert mode

 " ## added by OPAM user-setup for vim / base ## 93ee63e278bdfc07d1139a748ed3fff2 ## you can edit, but keep this line
 let s:opam_share_dir = system("opam config var share")
 let s:opam_share_dir = substitute(s:opam_share_dir, '[\r\n]*$', '', '')
 
 let s:opam_configuration = {}
 
 function! OpamConfOcpIndent()
   execute "set rtp^=" . s:opam_share_dir . "/ocp-indent/vim"
 endfunction
 let s:opam_configuration['ocp-indent'] = function('OpamConfOcpIndent')
 
 function! OpamConfOcpIndex()
   execute "set rtp+=" . s:opam_share_dir . "/ocp-index/vim"
 endfunction
 let s:opam_configuration['ocp-index'] = function('OpamConfOcpIndex')
 
 function! OpamConfMerlin()
   let l:dir = s:opam_share_dir . "/merlin/vim"
   execute "set rtp+=" . l:dir
 endfunction
 let s:opam_configuration['merlin'] = function('OpamConfMerlin')
 
 let s:opam_packages = ["ocp-indent", "ocp-index", "merlin"]
 let s:opam_check_cmdline = ["opam list --installed --short --safe --color=never"] + s:opam_packages
 let s:opam_available_tools = split(system(join(s:opam_check_cmdline)))
 for tool in s:opam_packages
   " Respect package order (merlin should be after ocp-index)
   if count(s:opam_available_tools, tool) > 0
     call s:opam_configuration[tool]()
   endif
 endfor
 " ## end of OPAM user-setup addition for vim / base ## keep this line
 "
" 
