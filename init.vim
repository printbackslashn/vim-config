"Dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/r00t/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/home/r00t/.cache/dein')

" Let dein manage dein
" Required:
call dein#add('/home/r00t/.cache/dein/repos/github.com/Shougo/dein.vim')

" Add or remove your plugins here like this:
call dein#add('scrooloose/nerdtree')
call dein#add('tmsvg/pear-tree')
call dein#add('ryanoasis/vim-devicons')

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

" Indentation
 set autoindent
 set expandtab
 set shiftwidth=4
 set smarttab
 set tabstop=4


 "Searching
 set ignorecase
 set incsearch
 set smartcase

 "Rendering
 set display+=lastline
 set encoding=utf-8
 set linebreak
 set scrolloff=4
 set sidescrolloff=5
 syntax enable
 
 
 "UI
 set laststatus=2
 set ruler
 set wildmenu
 set cursorline
 set number
 set relativenumber
 set noerrorbells
 set mouse=a
 set title
 set background=dark
