filetype plugin off

execute pathogen#infect()
syntax on
filetype plugin indent on

set nocompatible

let g:solarized_termcolors=256
set background=light
colorscheme solarized

map <C-V> "+gP
map <S-Insert> "+gP

vnoremap <C-C> "+y
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

map <A-1> 1gt
map <A-2> 2gt
map <A-3> 3gt
map <A-4> 4gt
map <A-5> 5gt
map <A-6> 6gt
map <A-7> 7gt
map <A-8> 8gt
map <A-9> 9gt

map <C-Right> <ESC>:tabnext<CR>
map <C-Left> <ESC>:tabprev<CR>
map <C-t> <ESC>:tabnew<CR>

augroup myvimrchooks
  au!
  autocmd bufwritepost .vimrc source ~/.vimrc
augroup END

set wildmode=longest,list,full
set wildmenu

map <F2> :NERDTreeToggle<CR>

" press F10 to open the buffer menu
set wildcharm=<C-Z>
nnoremap <F10> :b <C-Z>

if has('gui_running')
  set guifont=Ubuntu\ Mono\ for\ Powerline\ 12
endif"

set rtp+=~/.local/lib/python2.7/site-packages/powerline/bindings/vim
set laststatus=2 " Always display the statusline in all windows
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
