" Colors
" enable syntax processing
syntax enable

" Misc
set backspace=indent,eol,start

" Spaces & Tabs
" number of visual spaces per TAB
set tabstop=4
" number of spaces in tab when editing
set softtabstop=4
" tabs are spaces
set expandtab
set shiftwidth=4
set modelines=1
filetype plugin indent on
set autoindent

" UI
" show line numbers
set number
" show command in bottom bar
set showcmd
" visual autocomplete for command menu
set wildmenu
" redraw only when we need to.
set lazyredraw
" highlight matching parenthesis
set showmatch

" Searching
" search as characters are entered
set incsearch
" highlight matches
set hlsearch

" Folding
" enable folding
set foldenable
" open most folds by default
set foldlevelstart=10
" 10 nested fold max
set foldnestmax=10
" fold based on indent level
set foldmethod=indent

" DVC
autocmd! BufNewFile,BufRead Dvcfile,*.dvc setfiletype yaml

