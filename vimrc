" Enable folding
set foldmethod=indent
set foldlevel=99

nnoremap <space> za

call plug#begin()
Plug 'tmhedberg/SimpylFold'
let g:SimpylFold_docstring_preview=1

Plug 'vim-scripts/indentpython.vim'
Plug 'vim-syntastic/syntastic'
" Also add PEP 8 checking with this nifty little plugin:

Plug 'nvie/vim-flake8'

" Plug 'Valloric/YouCompleteMe'
" let g:ycm_autoclose_preview_window_after_completion=1
" map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

Plug 'kien/ctrlp.vim'

" Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

Plug 'tomtom/tcomment_vim'
call plug#end()

set nu
filetype plugin indent on

let python_highlight_all=1
syntax on

set encoding=utf-8
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

"python with virtualenv support
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"  project_base_dir = os.environ['VIRTUAL_ENV']
"  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"  execfile(activate_this, dict(__file__=activate_this))
"EOF

