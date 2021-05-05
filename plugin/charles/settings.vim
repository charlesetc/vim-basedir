" ===== Basic =====

set nonumber
set shell=bash
set incsearch
set hidden

" use short messages where possible
set shortmess=at

" check for a modeline when opening a file
set modeline
set modelines=10

" don't call fsync ever
set nofsync
if exists('&swapsync')
  set swapsync=""
endif

" No backup files
set nobackup
set noswapfile

" better syntax highlighting for shell scripts
" syntax highlight shell scripts as per POSIX,
" not the original Bourne shell which very few use
let g:is_posix = 1

" Always show the menu (even when there is only one match), insert longest match, show
" additional info (this is useful because merlin gives us signature of values)
set completeopt=menuone,longest,preview


" Reload files that change in the background if Vim has no changes
set autoread

" ===== Misc =====

let g:rainbow#blacklist = [255, 221, 203]
let g:airline_theme='understated'
let g:markdown_fenced_languages = ['ocaml', 'bash=sh', 'python', 'html']

" ===== Set =====

set nornu
set nonu
set nohlsearch
" set clipboard=unnamedplus
set ic
set nogdefault
set splitright
set shortmess+=O
set nowrap
set foldlevel=100
set history=1000
" powerful backspaces
set backspace=indent,eol,start
set undofile " Maintain undo history between sessions
set undodir=~/.vim/undo
set virtualedit=all

" ===== Tabs =====

set smarttab
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set shiftround
set nojoinspaces
set iskeyword=@,48-57,_,192-255

" This makes longer vim command history 
set viminfo=!,'100,<50,s10,h,:20000

" ===== Comments =====

let g:NERDCreateDefaultMappings = 0
let g:NERDSpaceDelims = 1
let g:NERDToggleCheckAllLines = 1
set formatoptions-=o

" ===== Calendar =====

let g:calendar_monday = 0

" ===== Netrw =====

let g:netrw_banner = 0
let g:netrw_ftp_list_cmd    = "ls -lF"
let g:netrw_ftp_timelist_cmd= "ls -tlF"
let g:netrw_ftp_sizelist_cmd= "ls -slF"

" Goyo

let g:goyo_width = 120
