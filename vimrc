" === GVIM === "

if has("gui_running")
    "Fullscreen"
    set guifont=Terminus\ 8
    set guioptions=-L
    colorscheme wombat
    set guioptions-=l
    set guioptions-=L
    set guioptions-=m
    set guioptions-=T
    set guioptions-=R
    set guioptions-=r
endif


" === END GVIM === "

filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set t_Co=256
"colorscheme 256-jungle
colorscheme jellybeans
set nocompatible
set backspace=indent,eol,start
set ruler
set showmode
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set autoindent
set autowrite
set showmatch
set number
set enc=utf8
set fileencodings=utf-8,latin2
set nobackup
set noswapfile
set nolist
set colorcolumn=80

filetype plugin on
filetype indent on
let ropevim_vim_completion=1

syntax on


" = KEY BINDINGS = "

" run program by using c-i
nmap    <C-i> :! python %<CR>

" = END KEY BINDINGS = "

