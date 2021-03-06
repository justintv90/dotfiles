" Netrw & Vinegar
let g:netrw_list_hide='\(^\|\s\s\)\zs\.\S\+'
let g:netrw_hide=1              " hide hidden files
let g:netrw_dirhistmax=100      " keep more history
let g:netrw_altfile=1           " last edited file '#'
let g:netrw_liststyle=0         " thin
let g:netrw_alto=0              " open files on right
let g:netrw_winsize=20          " preview winsize
let g:netrw_preview=1           " open previews vertically
let g:netrw_use_errorwindow=0   " suppress error window

" Allow netrw to remove non-empty local directories
"
let g:netrw_localrmdir='rm -r'
