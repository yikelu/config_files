" Enable folding
set foldmethod=indent
set foldlevel=99
set tabstop=4

nnoremap <space> za

call plug#begin()
Plug 'tmhedberg/SimpylFold'

" Plug 'vim-scripts/indentpython.vim'
" Plug 'vim-syntastic/syntastic'
Plug 'dense-analysis/ale'

" Also add PEP 8 checking with this nifty little plugin:

" Plug 'Valloric/YouCompleteMe'
" let g:ycm_autoclose_preview_window_after_completion=1
" map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

Plug 'kien/ctrlp.vim'

Plug 'vim-airline/vim-airline'

Plug 'tomtom/tcomment_vim'

Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
call plug#end()

set nu
filetype plugin indent on

let python_highlight_all=1
syntax on
let g:SimpylFold_docstring_preview=1

set encoding=utf-8
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

au Filetype python set
    \ tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
    \ textwidth=79
    \ expandtab
    \ autoindent
    \ fileformat=unix

"python with virtualenv support
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"  project_base_dir = os.environ['VIRTUAL_ENV']
"  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"  execfile(activate_this, dict(__file__=activate_this))
"EOF

set bs=indent,eol,start

set statusline=%f\ %h%w%m%r%=%-14.(%l,%c%V%)\ %P

set laststatus=2

let g:snipMate = { 'snippet_version' : 1 }

set wildmenu
set wildmode=longest,full
set wildoptions=pum

let g:ale_linters={
	\'python': ['pylint'],
	\}

set hlsearch
