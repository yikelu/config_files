" Filetype stuff
filetype indent on
filetype plugin on
syntax on
set ofu=syntaxcomplete#Complete

" Tab based stuff
set smarttab
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Other indents
set autoindent
set smartindent


" Options for minibufexpl
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 

" Auto complete with tab
function! CleverTab()
    if pumvisible()
        return "\<C-N>"
    endif
    if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
        return "\<Tab>"
    elseif exists('&omnifunc') && &omnifunc != ''
        return "\<C-X>\<C-O>"
    else
        return "\<C-N>"
    endif
endfunction
inoremap <Tab> <C-R>=CleverTab()<CR>

set completeopt=menu,longest

" Misc
set ruler
set autoread

set showmatch
set hlsearch
set backspace=2

let Tlist_Ctags_Cmd='/usr/local/bin/ctags'


