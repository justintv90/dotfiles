let g:fzf_buffers_jump = 1

let g:fzf_action = {
            \ 'ctrl-j': 'tab split',
            \ 'ctrl-s': 'split',
            \ 'ctrl-t': 'vsplit' }

function! s:buflist()
    redir => ls
    silent ls
    redir END
    return split(ls, '\n')
endfunction

function! s:bufopen(e)
    execute 'buffer' matchstr(a:e, '^[ 0-9]*')
endfunction
let g:fzf_action = {
            \ 'ctrl-t': 'tab split',
            \ 'ctrl-s': 'split',
            \ 'ctrl-v': 'vsplit'
            \ }

" " see all open buffers
" " TODO add capability to select buffers for deletion
" nnoremap <silent> -= :call fzf#run({
"             \   'source':  reverse(<sid>buflist()),
"             \   'sink':    function('<sid>bufopen'),
"             \   'options': '+m',
"             \   'down':    len(<sid>buflist()) + 2
"             \ })<CR>

" Search files really fast
nnoremap <silent> <A-s> :Ag<CR>

" search open buffers
nnoremap <silent> <A-i> :History:<CR>

nnoremap <silent> <A-f> :Files ~<CR>
nnoremap <silent> <A-e> :Buffers<CR>
" nnoremap <BS> :History:<cr>
"
" if the file isn't active, switch to it
" nnoremap <BS> :Files .<CR>
nnoremap <C-f> :ProjectFiles<CR>

" " Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" " Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Advanced customization using autoload functions
" inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})
"
"function! s:fzf_statusline()
"    "Override statusline as you like
"    highlight fzf1 ctermfg=161 ctermbg=251
"    highlight fzf2 ctermfg=23 ctermbg=251
"    highlight fzf3 ctermfg=237 ctermbg=251
"    setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
"endfunction
"
"autocmd! User FzfStatusLine call <SID>fzf_statusline()

set wildignore+=**/bower_components/*,**/node_modules/*,**/tmp/*,**/assets/images/*,**/assets/fonts/*,**/public/images/*

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
