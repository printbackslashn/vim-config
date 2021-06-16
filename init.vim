if &compatible
  set nocompatible               " Be iMproved
endif
call plug#begin('~/.config/nvim/plugged')
let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog = '/usr/bin/python'
let g:ycm_python_binary_path = 'python3'
" Required:
" Required:

" Let dein manage dein
" Required:
" Add or remove your plugins here like thiapt install mono-complete golang nodejs default-jdk npms:
Plug 'scrooloose/nerdtree'
Plug 'tmsvg/pear-tree'
Plug 'ryanoasis/vim-devicons'
Plug 'neomake/neomake', { 'for': ['rust'] }
Plug 'arcticicestudio/nord-vim'
Plug 'rust-lang/rust.vim'
Plug 'ycm-core/YouCompleteMe'
Plug 'vimwiki/vimwiki'

" Required:
call plug#end()
" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.

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
 colorscheme nord

 " Neomake
" Gross hack to stop Neomake running when exitting because it creates a zombie cargo check process
" which holds the lock and never exits. But then, if you only have QuitPre, closing one pane will
" disable neomake, so BufEnter reenables when you enter another buffer.
let s:quitting = 0
au QuitPre *.rs let s:quitting = 1
au BufEnter *.rs let s:quitting = 0
au BufWritePost *.rs if ! s:quitting | Neomake | else | echom "Neomake disabled"| endif
au QuitPre *.ts let s:quitting = 1
au BufEnter *.ts let s:quitting = 0
au BufWritePost *.ts if ! s:quitting | Neomake | else | echom "Neomake disabled"| endif
let g:neomake_warning_sign = {'text': '?'}

"
