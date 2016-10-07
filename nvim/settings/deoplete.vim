set completeopt+=noselect

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#enable_camel_case = 1
let g:deoplete#auto_completion_start_length = 2
let g:deoplete#max_list = 10

" let g:deoplete#sources#clang#libclang_path = '/usr/local/Cellar/llvm/HEAD/lib/libclang.dylib'
" let g:deoplete#sources#clang#clang_header = '/usr/local/Cellar/llvm/HEAD/lib/clang'


" " XXX may need changing
" let g:deoplete#file#enable_buffer_path = 0
" let g:deoplete#sources#jedi#show_docstring = 1
" " deoplete settings {{{
" let g:deoplete#sources#omni#input_patterns_tex =
"             \ '\v\\\a*(ref|cite)\a*([^]]*\])?\{([^}]*,)*[^}]*'
"
" let g:deoplete#omni#input_patterns_python = {}
" let g:deoplete#sources_           = []
" let g:deoplete#sources_md         = ['buffer','dictionary', 'file', 'member']
" let g:deoplete#sources_pandoc     = ['buffer','dictionary', 'file', 'member']
" let g:deoplete#sources_vim        = ['buffer', 'member', 'file', 'ultisnips']
" let g:deoplete#sources_txt        = ['buffer','dictionary', 'file', 'member']
" let g:deoplete#sources_mmd        = ['buffer','dictionary', 'file', 'member']
" let g:deoplete#sources_ghmarkdown = ['buffer','dictionary', 'file', 'member']
" let g:deoplete#sources_mail       = ['buffer','dictionary', 'file', 'member']
" "" }}}
" " auto selects text
" set completeopt+=noinsert
"
" autocmd FileType python setlocal omnifunc=jedi#completions
" let g:jedi#completions_enabled    = 0
" let g:jedi#auto_vim_configuration = 0
" let g:jedi#smart_auto_mappings    = 0
" let g:jedi#show_call_signatures   = 0
" " inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" " function! s:my_cr_function() abort
" "   return deoplete#mappings#close_popup() . "\<CR>"
" " endfunction

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
"

" deoplate-go settings
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#use_cache = 1
let g:deoplete#sources#go#json_directory = '~/.cache/deoplete/go/$GOOS_$GOARCH'
"
"

" " javascript
" let g:deoplete#omni#functions = {}
" let g:deoplete#omni#functions.javascript = [
"   \ 'tern#Complete',
"   \ 'jspc#omni'
" \]
" "
" set completeopt=longest,menuone,preview
" let g:deoplete#sources = {}
" let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'ternjs']
" let g:tern#command = ['tern']
" let g:tern#arguments = ['--persistent']
