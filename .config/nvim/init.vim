set nocompatible
filetype off

syntax enable

set number

"Leader
let mapleader=","

"Map the esc to jj
imap jj <ESC> 

set shell=/bin/bash

"""""""""Indentacion""""""""""""""""""
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting ">", use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
""""""""End Indentacion""""""""""""""


call plug#begin('~/.config/nvim/plugged')
" Dracula theme for vim
Plug 'dracula/vim'
"Numbers to move easily
Plug 'myusuf3/numbers.vim'
"Goyo, to make it beautiful
Plug 'junegunn/goyo.vim'
"NerdTree
Plug 'scrooloose/nerdtree'
"CtrlP to search files
Plug 'kien/ctrlp.vim'
"ColorSchemes
Plug 'flazz/vim-colorschemes'
"Lightline (the line below wich informs the mode and that stuff)
Plug 'itchyny/lightline.vim'
"Startify, make the start screen fancier
Plug 'mhinz/vim-startify'
Plug 'jceb/vim-orgmode'
" Python mode
" Plug 'klen/python-mode'
" To use git inside vim
Plug 'tpope/vim-fugitive'
" To see that fancy bar next to the numbers with the staging area
Plug 'airblade/vim-gitgutter'
" Adds a line with the buffers
Plug 'bling/vim-bufferline'
call plug#end()


""""""""LightLine"""""""""""""""
let g:lightline = {
    \ 'colorscheme': 'seoul256',
    \ }
set laststatus=2

"""""""""ShortCuts""""""""
"This maps Goyo to <F3>
map <F3> :Goyo <CR>

"This maps The Nerd Tree to <F2>
map <F2> :NERDTreeToggle<CR>

"This maps CtrlP with find files and buffers and MRUto <F4>
map <F4> :CtrlPMixed <CR>"""

set mouse-=a

" Automatically fix PEP8 errors in the current buffer:
noremap <F8> :PymodeLintAuto<CR>

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

color dracula
