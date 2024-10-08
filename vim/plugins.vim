" Load vim-plug
if empty(glob("~/.vim/autoload/plug.vim"))
  execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/main/plug.vim'
endif

" PLUGINS ( using vim-plug )
call plug#begin('~/.vim/bundle')
Plug 'https://github.com/flazz/vim-colorschemes.git'    " colour schemes
Plug 'pangloss/vim-javascript'                          " javscript syntax highlighting and indentation
Plug 'https://github.com/mxw/vim-jsx.git'               " jsx syntax highlighting and indentation
Plug 'leafgarland/typescript-vim'                       " typescript syntax highlighting
Plug 'peitalin/vim-jsx-typescript'                      " syntax highligting for jsx in typescript
Plug 'https://github.com/scrooloose/syntastic.git'      " linter
Plug 'https://github.com/hail2u/vim-css3-syntax.git'    " ccs3 syntax
Plug 'cakebaker/scss-syntax.vim'                        " scss syntax
Plug 'https://github.com/airblade/vim-gitgutter.git'    " git gutter
Plug 'vim-airline/vim-airline'                          " airline
Plug 'vim-airline/vim-airline-themes'                   " airline themes
Plug 'easymotion/vim-easymotion'                        " easy motion
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }  " vim prettier
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }     " fzf - fuzzy search
Plug 'junegunn/fzf.vim'                                 " fzf.vim - fuzzy search
Plug 'joshdick/onedark.vim'				                      " onedark theme
Plug 'mustache/vim-mustache-handlebars'                 " handlebars support
call plug#end()
