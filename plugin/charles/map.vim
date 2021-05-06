"p  ===== Unmappings =====

" ===== Terminal-mode mappings =====

if has('nvim')
  tnoremap <esc> <C-\><C-n>
  tnoremap yw <C-\><C-n>
  tnoremap ,h  <C-\><C-n><C-w>h
  tnoremap ,l  <C-\><C-n><C-w>l
endif

" ===== Insert-mode mappings =====

inoremap yw <ESC>
inoremap y,w <ESC>
inoremap Yw <ESC>
inoremap YW <ESC>
inoremap yW <ESC>
inoremap -. ->
 inoremap ,. <C-X><C-O>

" ===== All-mode mappings =====

noremap <space> :
set pastetoggle=<F1>
let mapleader = ",,"
let maplocalleader = ",,"

" ===== Normal mappings =====

" Pane movement

nnoremap ,h <C-w>h
nnoremap ,j <C-w>j
nnoremap ,k <C-w>k
nnoremap ,l <C-w>l

nnoremap ,H <C-w>H
nnoremap ,J <C-w>J
nnoremap ,K <C-w>K
nnoremap ,L <C-w>L

nnoremap ,o :only<CR>
nnoremap ,i :vsplit<CR>
nnoremap ,e :split<CR>


" Windows and buffers

nnoremap ,<ESC> :close<CR>
nnoremap ,b :q<CR>
nnoremap ,d <C-w>j:close<CR>
nnoremap <C-h> <C-w>h:close<CR>
nnoremap <C-l> <C-w>l:close<CR>
nnoremap ,D <C-w>k:close<CR>
nnoremap ,z :bdelete!<cr>
nnoremap ,w :w<CR>
nnoremap ,x :x<CR>
nnoremap ,q :qa!<CR>
nnoremap ,b :q<CR>
nnoremap ,,d <c-w>j:bd<CR>
nnoremap m :bn<CR>
nnoremap M :bp<CR>

" Plugins

nnoremap ,<F12> :Goyo<CR>
" nnoremap ,, :Goyo<CR>:Goyo<CR>


" FZF mappings

  nnoremap ,B :Buffers<CR>
  nnoremap ,<SPACE> :Buffers<CR>
  nnoremap ,a :Rg<CR>
  nnoremap ,A :Lines<CR>
  nnoremap ,n :Files<CR>
  nnoremap ,,c :Commands<CR>
  nnoremap ,W :Windows<CR>
  nnoremap ,N :History<CR>
  noremap <C-R> :History:<CR>


nnoremap U :redo<CR>

" Merlin
nnoremap ,t :MerlinTypeOf<CR>
nnoremap ,g :MerlinLocate<CR>
nnoremap ,r :MerlinLocateIntf<CR>,p
vnoremap ,t @:MerlinTypeOfSel<CR>
nnoremap ,T :MerlinDocument<CR>
nnoremap ,y :MerlinYankLatestType<CR>

" add type annotation to current word
noremap ,m :MerlinTypeOf<CR>:MerlinYankLatestType<CR>lbi(<ESC>ea : )<ESC>P

nnoremap <silent> <F8> :call mli_cycler#next()<cr>
nnoremap <silent> <F9> :call mli_cycler#next()<cr>

" Scrolling

nnoremap <PageUp> <C-u>
nnoremap <PageDown> <C-d>
nnoremap <Page-Up> <C-u>
nnoremap <Page-Down> <C-d>
nnoremap <Home> gg
nnoremap <End> G
nnoremap [ \{
nnoremap ] \}

" Visual
nnoremap v <C-v>
nnoremap <C-v> v
nnoremap vv V
vnoremap m gq$
vnoremap < <gv
vnoremap > >gv
vnoremap <Left> <gv
vnoremap <Right> >gv

nnoremap ,,s :%s//g<Left><Left>
nnoremap ,s :s//g<Left><Left>
vnoremap ,s :s//g<Left><Left>

" Reformat entire paragraph

nnoremap == m9vip=g`9

" Case Sensitive Search

nnoremap c/ /\C


" Meta

nnoremap ,vs :so ~/.vimrc<CR>
nnoremap ,vv :e ~/.vimrc<CR>
nnoremap ,vm :e ~/.vim/plugin/charles/map.vim<CR>
nnoremap ,va :e ~/.vim/plugin/charles/abbrev.vim<CR>
nnoremap ,vc :e ~/.vim/plugin/charles/colors.vim<CR>
nnoremap ,vt :e ~/.vim/plugin/charles/settings.vim<CR>
nnoremap ,vu :e ~/.vim/plugin/charles/autocommand.vim<CR>
nnoremap ,vh :e ~/.vim/plugin/charles/html.vim<CR>
nnoremap ,vb :e ~/.vim/plugin/charles/bundles<CR>
nnoremap ,vB :e ~/.vim/plugin/charles/bundles<CR>
nnoremap ,v<F8> :e ~/.vim/plugin/charles/map.vim<CR>
nnoremap ,vj :so ~/.vimrc<CR>

" Zsh
nnoremap ,vz :e ~/.zshrc<CR>
nnoremap - :e %:h<CR>

" Comments
" nnoremap  ,c :call NERDComment("n", "toggle")<cr>
" vnoremap  ,c :call NERDComment("v", "toggle")<cr>
" nnoremap  ,C :call NERDComment("n", "minimal")<cr>
" vnoremap  ,C :call NERDComment("v", "minimal")<cr>
" let g:NERDTrimTrailingWhitespace = 1

" Quickfixlist that loops!
command! Cnext try | cnext | catch | cfirst | catch | endtry
command! Cprev try | cprev | catch | clast | catch | endtry
command! Lnext try | lnext | catch | lfirst | catch | endtry
command! Lprev try | lprev | catch | llast | catch | endtry

" nnoremap \| :vsplit<CR>:term<CR>a
nnoremap \| :split<CR><C-w>j:term<CR>a
nnoremap ,\ :term<CR>a

" Syntax syncing
 
noremap <F6> <Esc>:syntax sync fromstart<CR>
inoremap <F6> <C-o>:syntax sync fromstart<CR>
nnoremap gl gqapk$

" Misc

nnoremap gf gF
nnoremap <M-[> q:
" not sure what this does
nmap <F10> :setlocal invspell spelllang=en_us<CR>
" lookup keyword is almost never used, invert J instead
nnoremap K i<CR><Esc>R>
" ----------
