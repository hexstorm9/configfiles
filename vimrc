" Hexstorm Vim Config File
" V1
" 2021
"

call plug#begin('~/.vim/plugged')
  Plug 'preservim/nerdtree'
  Plug 'mattn/emmet-vim'
call plug#end()
let g:user_emmet_leader_key=','

syntax on
set title
set visualbell
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab "Tabs will be spaces
set smartindent

set matchpairs+=<:> "Highlight matching pairs of brackets. Use the '%' character to jump between them.
set encoding=utf-8

set nu "Numbers
set rnu "Relative Numbers
set scrolloff=4 "Scroll offset
set ttyfast "Scroll faster
set laststatus=2
set showmode
set showcmd
set statusline=%<%f\ %h%m%r\ %y%=%{v:register}\ %-14.(%l,%c%V%)\ %P

set nowrap "The lines will go off the screen if they have to
set smartcase "Searching won't be case sentitive until a Capital Letter
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set showmatch "Show matching parenthesis

set hlsearch
set incsearch
set colorcolumn=80 
highlight ColorColumn ctermbg=0 guibg=lightgrey

inoremap jj <ESC>

inoremap kj <ESC>
inoremap jk <ESC>
nmap <CR> o<ESC> 
nnoremap <esc><esc> :silent! nohls<cr>

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
