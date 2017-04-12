"" Neomake
"" ---------------------------------------------------------------------------

let g:neomake_logfile = '/usr/local/var/log/neomake.log'
" let g:neomake_open_list=0
" let g:neomake_verbose = 2
autocmd! BufWritePost * Neomake

let g:neomake_warning_sign = {
    \ 'text': '✗',
    \ 'texthl': 'ErrorMsg',
    \ }
let g:neomake_error_sign = {
    \ 'text': '⚠',
    \ 'texthl': 'ErrorMsg',
    \ }

let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_jsx_enabled_makers = ['eslint']
