" ================ Autocommands =========================== {{{

" general settings {{{
augroup general
    " Switch working dir on open
    autocmd BufEnter * lcd %:p:h

    " lint on save
    autocmd! BufWritePost * Neomake

    " remove whitespace on save
    autocmd! BufWritePre * :call <SID>StripTrailingWhitespaces()

    " enter insert mode automatically when switching to a term split
    " autocmd BufEnter term://* startinsert
    " saves file on focus change
    autocmd BufLeave,FocusLost * silent! wall
    " close preview window after completion
    let blacklist = ['vim', 'nvim']
    autocmd CompleteDone * if index(blacklist, &ft) <0 | pclose!

augroup END
" }}}

function s:MkNonExDir(file, buf)
    if empty(getbufvar(a:buf, '&buftype')) && a:file!~#'\v^\w+\:\/'
        let dir=fnamemodify(a:file, ':h')
        if !isdirectory(dir)
            call mkdir(dir, 'p')
        endif
    endif
endfunction
augroup BWCCreateDir
    autocmd!
    autocmd BufWritePre * :call s:MkNonExDir(expand('<afile>'), +expand('<abuf>'))
augroup END

" vimscript settings --- {{{
augroup filetypeVim
    autocmd!
    " Source current file Alt-% (good for vim development)
    autocmd Filetype vim nnoremap <A-%> :w<bar>so %<CR>
    autocmd Filetype vim setlocal foldmethod=marker
    autocmd Filetype vim inoremap <buffer> 7 &
    autocmd Filetype vim inoremap <buffer> & 7
augroup END
" }}}


" auto clean whitespace --- {{{
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

" }}}


