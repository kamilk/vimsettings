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

au Filetype cpp,c set shiftwidth=4
au Filetype cpp,c set softtabstop=4

au FileType javascript let b:delimitMate_expand_cr = 1
au FileType javascript set shiftwidth=4
au FileType javascript set softtabstop=4

set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors

nnoremap <F2> :nohl<RETURN>
imap <C-Q> <C-R>=GetCloseTag()<CR>
nmap <C-Q> a<C-Q><Esc>
nmap <F6> :make<CR>
nmap <F8> :TagbarToggle<CR>
