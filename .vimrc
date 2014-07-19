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
au FileType tex nmap <F12> :w<LF>\ll\ls
au FileType tex set wrap lbr
au FileType tex nmap <C-i> i\textit{}
au FileType tex imap <C-i> \textit{}
au FileType tex nmap <C-b> i\textbf{}
au FileType tex imap <C-b> \textbf{}
au FileType tex set spell

set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors

command CDC cd %:p:h " Change directory to the current file

nnoremap <F2> :nohl<RETURN>
inoremap <F2> <ESC>:nohl<RETURN>a
nmap <F3> :NERDTreeToggle<CR>
nmap <F6> :make<CR>
nmap <F8> :TagbarToggle<CR>

imap <C-Q> <C-R>=GetCloseTag()<CR>
nmap <C-Q> a<C-Q><Esc>

map <silent> <Up> gk
imap <silent> <Up> <C-o>gk
map <silent> <Down> gj
imap <silent> <Down> <C-o>gj
map <silent> <home> g<home>
imap <silent> <home> <C-o>g<home>
map <silent> <End> g<End>
imap <silent> <End> <C-o>g<End>

