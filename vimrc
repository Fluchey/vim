execute pathogen#infect()

filetype on
syntax on
colorscheme moonscape
set guifont=Menlo\ Regular:h18

" Number indicator
set number

" Leader key
let mapleader=","

" Keep more info in memory to speed things up
set hidden
set history=100

" Logic when indenting
filetype indent on
set nowrap
set expandtab
set smartindent
set autoindent

" Remove whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" Better search
set hlsearch "Highlight search result
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR> " Ability to cancel search with escape

" Quickly move back an forth between two files by pressing leader key twice
nnoremap <Leader><Leader> :e#<CR>

" Show matching parenthesis
set showmatch
