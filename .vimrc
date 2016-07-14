" Author: Daniel Liburd

" PLUGINS ( using vim-plug )
call plug#begin('~/.vim/plugged')
Plug 'https://github.com/flazz/vim-colorschemes.git'
call plug#end()

" COLOURS
syntax enable		" turn syntax processing on
colorscheme molokai	" set colour scheme

" UI LAYOUT
set number		" show line numbers
set showcmd		" show command in bottom bar
set nocursorline	" highlight current line
