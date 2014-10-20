call plug#begin('~/.vim/plugged')

Plug 'junegunn/seoul256.vim'
Plug 'whatyouhide/vim-gotham'
Plug 'scrooloose/nerdtree'
Plug 'ervandew/supertab'
Plug 'davidhalter/jedi-vim'
Plug 'bling/vim-airline'
Plug 'nvie/vim-flake8'
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'groenewege/vim-less'
Plug 'mileszs/ack.vim'
Plug 'vsushkov/nerdtree-ack'
Plug 'majutsushi/tagbar'
Plug 'szw/vim-tags'

call plug#end()

if has("gui_running")
    "Fullscreen"
    set guifont=Literation\ Mono\ Powerline\ 7
    set guioptions=-L
    set guioptions-=l
    set guioptions-=L
    set guioptions-=m
    set guioptions-=T
    set guioptions-=R
    set guioptions-=r
endif

colorscheme seoul256

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

let NERDTreeIgnore = ['\.pyc$']
let g:airline_powerline_fonts = 1
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#use_splits_not_buffers = "right"

nmap <leader>b :CtrlPMixed<cr>
