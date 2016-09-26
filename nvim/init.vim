" ================ General Config =================== {{{
source ~/dotfiles/nvim/settings/general-settings.vim
" }}}


" ============= Custom Syntax Highlighting === {{{
" TODO make custom synax highlighting work
syntax match myTodo "\<\l\{2\}TODO\>"
syntax match myTodo "\<\l\{2\}todo\>"
syntax match myName "\s. A:"
syntax match otherName "\s. [^A]:"
highlight myName guifg=red

highlight otherName guifg=blue

highlight MyGroup guifg=pink
syntax match MyGroup /QUESTION\|CHANGEME\|???|\README/

hi def link myTodo Todo
hi def link myTodo2 Todo
syntax match todo "TODO"
" }}}


" =============== Plugin Initialization =============== {{{

call plug#begin('~/.config/nvim/bundle/')
source ~/dotfiles/nvim/settings/plugs.vim
call plug#end()
" }}}


" ============= Source Settings  ============= {{{

" to avoid my mapping getting clobbered
 source ~/dotfiles/nvim/settings.vim

" }}}
"
"


