" Genereal plugins {{{ "
Plug 'neomake/neomake', {'on': ['Neomake']}

" Movement plugins
Plug 'justinmk/vim-sneak'
Plug 'tmhedberg/matchit'
Plug 'Yggdroot/indentLine'
Plug 'jeffkreeftmeijer/vim-numbertoggle'

" Session plugins
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'

" }}} Genereal plugins "

" Searcsh
Plug 'rking/ag.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'


" Tag Search
Plug 'majutsushi/tagbar',  { 'on': 'TagbarToggle'}
Plug 'tpope/vim-ragtag'


" Editing
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'


" Snipets
Plug 'Shougo/deoplete.nvim'         " Autocompletion Engine (neovim)
Plug 'SirVer/ultisnips'
Plug 'ervandew/supertab'
Plug 'tomtom/tcomment_vim'


" Javascript
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'jaawerth/neomake-local-eslint-first', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'guileen/vim-node-dict', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'moll/vim-node', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/yajs.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug '1995eaton/vim-better-javascript-completion', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'gavocanov/vim-js-indent', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'marijnh/tern_for_vim', { 'do': 'npm install' , 'for': ['javascripts', 'javascript.jsx']}
Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'digitaltoad/vim-jade', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'elzr/vim-json',{ 'for': ['javascript', 'javascript.jsx'] }


" Golang
Plug 'fatih/vim-go', {'for': ['go']}
Plug 'zchee/deoplete-go', { 'do': 'make', 'for': ['go']}


" Visual & Syntax
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'skwp/vim-html-escape', {'for': ['html']}

" File explorer
Plug 'tpope/vim-vinegar'

