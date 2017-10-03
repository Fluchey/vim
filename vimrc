set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'lervag/vimtex'

Plugin 'flazz/vim-colorschemes'

Plugin 'valloric/youcompleteme'

Plugin 'scrooloose/nerdtree'

Plugin 'jeffkreeftmeijer/vim-numbertoggle'

Plugin 'Chiel92/vim-autoformat'

Plugin 'jiangmiao/auto-pairs'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
" Leader key
let mapleader=','
let maplocalleader = ",,"
noremap <F2> :Autoformat<CR>

" Remap so that auto pairs don't treat å like shit
let g:AutoPairsShortcutFastWrap=''

"Colors
colorscheme minimalist
set guifont=inconsolata 


"set background=dark
set colorcolumn=110
highlight ColorColumn ctermbg=darkgray
syntax on
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul
	

" Number Lines
set number
set relativenumber

" Better search
set hlsearch "Highlight search result
nnoremap <F3> :set hlsearch!<CR>


" Other
autocmd vimenter * NERDTree
autocmd filetype python nnoremap <F4> :w <bar> exec '!python '.shellescape('%')<CR>
autocmd filetype c nnoremap <F4> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F4> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd VimEnter * wincmd p
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
set autoindent
