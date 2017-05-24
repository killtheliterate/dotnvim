"" Neomake
"" ---------------------------------------------------------------------------

let g:neomake_logfile = '/usr/local/var/log/neomake.log'
let g:neomake_open_list = 0
let g:neomake_verbose = 0


let g:neomake_warning_sign = {
    \ 'text': '✗',
    \ 'texthl': 'ErrorMsg',
    \ }
let g:neomake_error_sign = {
    \ 'text': '⚠',
    \ 'texthl': 'ErrorMsg',
    \ }

let g:neomake_javascript_enabled_makers = ['standard']
let g:neomake_jsx_enabled_makers = ['standard']

" @see: https://vimhelp.appspot.com/editing.txt.html#file-searching
" @see: https://github.com/neomake/neomake/issues/247
" if findfile('.eslintrc.js', '.;') !=# ''
"   echom "yep"
"
"   let b:neomake_open_list = 1
"   let b:neomake_verbose = 1
"
"   let b:neomake_javascript_enabled_makers = ['eslint']
"   let b:neomake_jsx_enabled_makers = ['eslint']
"   let s:eslint_path = system('PATH=$(npm bin):$PATH && which eslint')
"   let b:neomake_javascript_eslint_exe = substitute(s:eslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
" endif

autocmd! BufWritePost * Neomake
