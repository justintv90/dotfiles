" Sneak
let g:sneak#streak = 1
let g:sneak#s_next = 1
let g:sneak#use_ic_scs = 1
let g:sneak#target_labels = 'qwfupzxycvmlp,asdhione'
" Sneak mappings
"replace 'f' with 1-char Sneak
nmap f <Plug>Sneak_f
nmap F <Plug>Sneak_F
vmap f <Plug>Sneak_f
vmap F <Plug>Sneak_F

"nmap s <Plug>Sneak_f
"nmap S <Plug>Sneak_F
"vmap s <Plug>Sneak_f
"vmap S <Plug>Sneak_F
xmap f <Plug>Sneak_f
xmap F <Plug>Sneak_F
omap f <Plug>Sneak_f
omap F <Plug>Sneak_F
"replace 't' with 1-char Sneak
" nmap t <Plug>Sneak_t
" nmap T <Plug>Sneak_T
" xmap t <Plug>Sneak_t
" xmap T <Plug>Sneak_T
" omap t <Plug>Sneak_t
" omap T <Plug>Sneak_T
" vmap t <Plug>Sneak_t
" vmap T <Plug>Sneak_T
"
hi link SneakPluginTarget ErrorMsg
hi link SneakPluginScope  Comment
