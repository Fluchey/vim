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

Plugin 'rhysd/vim-clang-format'
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
noremap <F2> :ClangFormat<CR>

" Remap so that auto pairs don't treat å like shit
let g:AutoPairsShortcutFastWrap=''

"Colors
colorscheme wolfpack
set guifont=inconsolata:h40


"set background=dark
set colorcolumn=110
syntax on
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul
	

" Number Lines
set number
set relativenumber

" Better search
set hlsearch "Highlight search result
nnoremap <F3> :set hlsearch!<CR>

" Spaces
set tabstop=4       	" The width of a TAB is set to 4.
			" Still it is a \t. It is just that
			" Vim will interpret it to be having
			" a width of 4.

set shiftwidth=4    " Indents will have a width of 4
							    
set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces"

" Other
autocmd vimenter * NERDTree
autocmd filetype python nnoremap <F4> :w <bar> exec '!python '.shellescape('%')<CR>
 autocmd filetype c nnoremap <F4> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F4> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd VimEnter * wincmd p
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
set autoindent


let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/youcompleteme/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
