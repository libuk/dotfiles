" Author: Daniel Liburd

" PLUGINS ( using vim-plug )
call plug#begin('~/.vim/plugged')
Plug 'https://github.com/flazz/vim-colorschemes.git'	" colour schemes
Plug 'https://github.com/mxw/vim-jsx.git'		" jsx syntax highlighting
Plug 'https://github.com/airblade/vim-gitgutter.git'	" git gutter
call plug#end()

" COLOURS
syntax enable		" turn syntax processing on
colorscheme molokai	" set colour scheme

" UI LAYOUT
set number		" show line numbers
set showcmd		" show command in bottom bar
set nocursorline	" highlight current line

" SEARCH
set incsearch		" search as characters are entered
set hlsearch 		" highlight matches

" MISC
set noswapfile		" disable .swp file creation
