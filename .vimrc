set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
" ...
Plugin 'Valloric/YouCompleteMe' 
Plugin 'vim-scripts/indentpython.vim'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kalekundert/vim-coiled-snake'
Plugin 'Konfekt/FastFold'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'lepture/vim-jinja'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

autocmd vimenter * NERDTree

" Setup the ability to split below and split right
set splitbelow
set splitright

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Add PEP 8 indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab	|
    \ set autoindent	|
    \ set fileformat=unix |

au BufNewFile,BufRead *.rb
    \ set tabstop=2 |
    \ set shiftwidth=2 |
    \ set textwidth=79 |
    \ set expandtab	|
    \ set autoindent	|
    \ set fileformat=unix |
    \ set softtabstop=2 |

au BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm 
    \ set ft=jinja |  
    \ set tabstop=2 |
    \ set shiftwidth=2 |
    \ set expandtab	|
    \ set autoindent	|
    \ set fileformat=unix |
    \ set softtabstop=2 |


au BufNewFile,BufRead *.js
    \ set tabstop=2 |
    \ set shiftwidth=2 |
    \ set textwidth=79 |
    \ set expandtab	|
    \ set autoindent	|
    \ set fileformat=unix |
    \ set softtabstop=2 |

" add yaml stuffs
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
set encoding=utf-8

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
let python_highlight_all=1
syntax on

syntax on
colorscheme monokai

call togglebg#map("<F5>")

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

set nu

set clipboard=unnamed


