if &compatible
  set nocompatible               " Be iMproved
endif
" Required:
call plug#begin()
" Required:
" Add or remove your plugins here like thiapt install mono-complete golang nodejs default-jdk npms:
Plug 'scrooloose/nerdtree'
Plug 'tmsvg/pear-tree'
Plug 'ryanoasis/vim-devicons'
Plug 'neomake/neomake', { 'for': ['rust'] }
Plug 'arcticicestudio/nord-vim'
Plug 'rust-lang/rust.vim'
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
 set scrolloff=6
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
if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
"^^^True colors

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

"Vimwiki stuff
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md',
                      \ 'custom_wiki2html': '/usr/bin/wiki2html.sh'}]
let g:vimwiki_global_ext = 0
