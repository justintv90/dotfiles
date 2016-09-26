" GENERAL SETTINGS
"
"-- Visual

syntax on
filetype indent plugin on

set title
set number  " Show line numbers
set cursorline
set showcmd
set pastetoggle=<F10>
set shiftround                      " always round indents to multiple of shiftwidth
set splitright                      " Split preferences
set modelines=0                     " Security thing
set laststatus=2                    " Format status line
set backspace=indent,eol,start      " backspacing in insert mode

set background=dark
set t_Co=256

set virtualedit=onemore,block
set clipboard=unnamedplus
set viewoptions=folds,options,cursor,unix,slash
set lazyredraw
set ttyfast
set synmaxcol=500 " speed up vim by not highlighting after column 500
set rtp+=~/.fzf " add FuZzy Finder to runtimepath

set noesckeys
set ttimeout
set ttimeoutlen=1
" ================ Python Setting  ============= {{{

let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog = '/usr/bin/python'
" }}}

" ================ Turn Off Swap Files ============= {{{

set noswapfile
set nobackup
set nowb
" }}}

" ================ Folds ============================ {{{

"set foldmethod=syntax
set foldmethod=manual
set foldnestmax=30    " deepest fold is 30 levels
set nofoldenable      " don't fold by default
set foldlevelstart=99 " start with folds open
" }}}

" ================ Indentation ====================== {{{

set autoindent
" set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Display tabs and trailing spaces visually
set listchars=tab:>-,trail:~,extends:>,precedes:<,space:.

set nowrap       " Don't wrap lines
set linebreak    " Wrap lines at convenient points
" }}}

" ================ Search =========================== {{{

set ignorecase " Ignore case when searching...
set smartcase  " ...unless we type a capital
set infercase  " smarter dictionary completion
" }}}
