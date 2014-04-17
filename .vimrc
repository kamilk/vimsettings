set nocompatible

if has('win32') || has ('win64')
  language US
endif

filetype plugin on
runtime macros/matchit.vim

if has('win32') || has ('win64')
    let $VIMHOME = $HOME."/vimfiles"
else
    let $VIMHOME = $HOME."/.vim"
endif
let $CLOSETAGPATH=$VIMHOME."/closetag.vim"
au Filetype html,xml,xsl,eruby source $CLOSETAGPATH

call pathogen#infect()

syntax on

set autoindent
set expandtab
set shiftwidth=2
set softtabstop=2
set number
set ignorecase
set smartcase
set incsearch
set hlsearch
set history=50		" keep 50 lines of command line history
set backspace=indent,eol,start
colorscheme pablo

au Filetype cpp,c set tabstop=4
au Filetype cpp,c set shiftwidth=4
au Filetype cpp,c set softtabstop=4

au FileType javascript let b:delimitMate_expand_cr = 1
au FileType javascript set shiftwidth=4
au FileType javascript set softtabstop=4
au FileType tex set sw=2
au FileType tex set iskeyword+=:

set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors

nnoremap <F2> :nohl<RETURN>
nmap <F3> :NERDTreeToggle<CR>
nmap <F6> :make<CR>
nmap <F8> :TagbarToggle<CR>

imap <C-Q> <C-R>=GetCloseTag()<CR>
nmap <C-Q> a<C-Q><Esc>


""""" latex

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
