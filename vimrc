execute pathogen#infect()

filetype on
syntax enable
colorscheme moonscape

set guifont=Menlo\ Regular:h18

" Number indicator
set number

" Leader key
let mapleader=','

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

" Quickly move back an forth between two files by pressing leader key twice
nnoremap <Leader><Leader> :e#<CR>

" Switch between errors with shortcut
nnoremap <Leader><n> :cnext<CR>

" Show matching parenthesis
set showmatch

" VIM-LATEX
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat= 'pdf'
