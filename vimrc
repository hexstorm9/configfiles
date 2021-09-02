" Hexstorm Vim Config File
" V1
" 2021
"

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

"Declare Coc Extensions
let g:coc_global_extensions = ['coc-ultisnips', 'coc-json', 'coc-java', 'coc-html', 'coc-css', 'coc-yaml', 'coc-highlight', 'coc-angular']

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'

call plug#end()


colorscheme gruvbox
set background=dark
let g:airline_powerline_fonts = 1

let mapleader = ","
noremap <leader>w :w<cr>
noremap <leader>q :q<cr>
noremap <leader>gs :CocSearch 
"Open FZF searching the current directory
noremap <leader>fs :Files %:p:h<cr> 

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"Remap <C-n> and <C-p> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-n> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-n>"
  nnoremap <silent><nowait><expr> <C-p> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-p>"
  inoremap <silent><nowait><expr> <C-n> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-p> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-n> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-n>"
  vnoremap <silent><nowait><expr> <C-p> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-p>"
endif
