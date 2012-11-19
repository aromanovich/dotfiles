call pathogen#infect()

syntax on
filetype plugin on
filetype indent on

set nocompatible

let g:solarized_termcolors=256
set background=dark
colorscheme solarized

map <C-V>   	"+gP
map <S-Insert>	"+gP

vnoremap <C-C>      "+y
vnoremap <C-Insert> "+y

noremap <C-Z> u
inoremap <C-Z> <C-O>u

noremap <C-Y> <C-R>
inoremap <C-Y> <C-O><C-R>

set guioptions-=r
set guioptions-=T
set guioptions-=m
set mousehide

set autoread
set noswapfile

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set ruler

set number
set nowrap
set lines=40
set columns=120

autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType less setlocal shiftwidth=2 tabstop=2 softtabstop=2

autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
