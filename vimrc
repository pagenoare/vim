call plug#begin('~/.vim/plugged')

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
Plug 'w0ng/vim-hybrid'
Plug 'mhinz/vim-signify'
Plug 'alfredodeza/coveragepy.vim'

call plug#end()

if has("gui_running")
    "Fullscreen"
    set guifont=Sauce\ Code\ Powerline\ 7
    set guioptions=-L
    set guioptions-=l
    set guioptions-=L
    set guioptions-=m
    set guioptions-=T
    set guioptions-=R
    set guioptions-=r
endif

colorscheme hybrid

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
autocmd FileType python setlocal completeopt-=preview

let g:jedi#use_tabs_not_buffers = 0
let g:jedi#use_splits_not_buffers = "right"
let g:jedi#show_call_signatures = 0

let g:signity_vcs_list = ['git', 'hg']

nmap <leader>b :CtrlPMixed<cr>
nmap <F2> :NERDTreeToggle<cr>
nmap <F8> :TagbarToggle<cr>

:python << EOF
import os
virtualenv = os.environ.get('VIRTUAL_ENV')
if virtualenv:
    activate_this = os.path.join(virtualenv, 'bin', 'activate_this.py')
    if os.path.exists(activate_this):
        execfile(activate_this, dict(__file__=activate_this))
EOF
