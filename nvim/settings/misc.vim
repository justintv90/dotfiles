" ================ Return to last edit =========================== {{{

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal! g`\"" |
            \ endif
" }}}

" ================ Misc =========================== {{{

" read epub files in vim
autocmd BufReadCmd *.epub call zip#Browse(expand("<amatch>"))

" }}}
"

" Apply macro to visual block with @ key
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction<Paste>
