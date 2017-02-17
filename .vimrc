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
Plug 'vim-airline/vim-airline-themes'                   " airline themes
Plug 'easymotion/vim-easymotion'                        " easy motion
call plug#end()

" COLOURS
syntax enable       " turn syntax processing on
colorscheme onedark " set colour scheme

" SPACES & TABS
set tabstop=2                   " number of visual spaces per TAB
set softtabstop=2               " number of spaces in tab when editing
set shiftwidth=2                " indent of spaces on enter
set expandtab                   " tabs are spaces
set backspace=indent,eol,start  " backspace works as normal

" UI LAYOUT
set number          " show line numbers
set showcmd         " show command in bottom bar
set cursorline      " highlight current line
set laststatus=2    " always display statusline

" SEARCH
set incsearch       " search as characters are entered
set hlsearch        " highlight matches

" MISC
set noswapfile      " disable .swp file creation
set mouse=a         " enable mouse interactions
vnoremap > >gv      " keep current selection after tab indent
vnoremap < <gv      " keep current selection after tab indent

" MAPS
nnoremap <F5> :buffers<CR>:buffer<Space>

" SYNTASTIC
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1                                    " display syntax errors in location list
let g:syntastic_auto_loc_list = 1                                               " close location list if no errors are present
let g:syntastic_check_on_wq = 1                                                 " run syntastic on save and quit
let g:syntastic_javascript_eslint_exec = system('echo -n `npm bin`').'/eslint'  " find/use local eslint directory
let g:syntastic_javascript_checkers = ['standard']                              " use standard as javascript checker

" AIRLINE
let g:airline#extensions#tabline#enabled = 1        " display buffer names
let g:airline#extensions#tabline#left_sep = ' '     " straight buffer tabs
let g:airline#extensions#tabline#left_alt_sep = '|' " straight buffer tabs
let g:airline#extensions#tabline#fnamemod = ':.'    " display relative path of buffer
let g:airline#extensions#tabline#fnamecollapse = 0  " disable collapse of path name

let g:airline_left_sep=''   " remove seperators from statusline and buffers
let g:airline_right_sep=''  " remove seperators from statusline and buffers

" EASY-MOTION
let g:EasyMotion_do_mapping = 1 " Use default mappings

" Change cursor between insert and normal mode in iTerm2
if $TERM_PROGRAM =~ "iTerm"
  let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
  let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif
