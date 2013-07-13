filetype plugin on
runtime macros/matchit.vim

call pathogen#infect()

set autoindent
set expandtab
set shiftwidth=2
set softtabstop=2
set number
set ignorecase
set smartcase
set incsearch
set hlsearch
colorscheme pablo

au Filetype cpp,c set shiftwidth=4
au Filetype cpp,c set softtabstop=4

set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors

au Filetype html,xml,xsl,eruby source ~/.vim/closetag.vim 

nnoremap <F2> :nohl<RETURN>
