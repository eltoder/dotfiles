"" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Personal Plugins
"Bundle 'scrooloose/nerdcommenter'
"Bundle 'scrooloose/nerdtree'
"Bundle 'scrooloose/syntastic'
"Bundle 'leafgarland/typescript-vim'
"Bundle 'dart-lang/dart-vim-plugin'
"Bundle 'ervandew/supertab'
"Bundle 'kien/ctrlp.vim'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

let mapleader='\'
let maplocalleader=' '

set background=dark
"let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

"" Misc
syntax enable
set nofoldenable
set ruler
set laststatus=2
set showcmd
set hidden
set history=1000
set hlsearch
set incsearch
set backspace=indent,eol,start
set virtualedit=all
set ts=8 sts=4 sw=4 expandtab
set colorcolumn=101
set spelllang=en_us

autocmd Filetype gitcommit setlocal spell

"" shortcuts
set pastetoggle=<F12>
nnoremap ; :
nnoremap <leader>c :noh<CR>
nnoremap <leader>s :setlocal spell!<CR>

"" restore last cursor position
au BufReadPost * if line("'\"") >= 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
