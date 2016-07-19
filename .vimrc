" Author: Daniel Liburd

" PLUGINS ( using vim-plug )
call plug#begin('~/.vim/plugged')
Plug 'https://github.com/flazz/vim-colorschemes.git'    " colour schemes
Plug 'pangloss/vim-javascript'                          " javscript syntax highlighting and indentation
Plug 'https://github.com/mxw/vim-jsx.git'               " jsx syntax highlighting and indentation
Plug 'https://github.com/scrooloose/syntastic.git'      " linter
Plug 'https://github.com/hail2u/vim-css3-syntax.git'    " ccs3 syntax
Plug 'cakebaker/scss-syntax.vim'                        " scss syntax
Plug 'https://github.com/airblade/vim-gitgutter.git'    " git gutter
Plug 'vim-airline/vim-airline'                          " airline
call plug#end()

" COLOURS
syntax enable       " turn syntax processing on
colorscheme onedark " set colour scheme

" SPACES & TABS
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set expandtab       " tabs are spaces

" UI LAYOUT
set number          " show line numbers
set showcmd         " show command in bottom bar
set nocursorline    " highlight current line
set laststatus=2    " always display statusline

" SEARCH
set incsearch       " search as characters are entered
set hlsearch        " highlight matches

" MISC
set noswapfile      " disable .swp file creation

" SYNTASTIC
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = system('echo -n `npm bin`').'/eslint'
