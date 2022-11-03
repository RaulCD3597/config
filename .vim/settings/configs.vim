" disable compatibility with vi which can cause unexpected issues.
set nocompatible
set encoding=utf-8
syntax on

" set leader key
let mapleader = " "

" line numbers
set number
set relativenumber
set numberwidth=1

" tabs and identation
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent

"  wrapping
set nowrap

" search settings
set ignorecase
set smartcase
set hlsearch
set incsearch

" cursor line
set cursorline

" clipboard
set clipboard=unnamed

" split windows
set splitright
set splitbelow

" theme config
colorscheme gruvbox
let g:gruvbox_contrast_dark="hard"
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
