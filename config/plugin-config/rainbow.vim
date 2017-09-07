"
" let gBlue = '#458588'
" let gMagenta = '#b16286'
" let gRed = '#cc241d'
" let g166 = '#d65d0e'
"
" " \ 'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
" "
" let g:rainbow_conf = {
" \ 'operators': '_,_',
" \ 'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
" \ 'separately': {
" \   '*': {
" \      'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
" \   },
" \   'tex': {
" \      'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
" \   },
" \   'vim': {
" \      'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
" \   },
" \   'html': {
" \      'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
" \   },
" \   'css': 0,
" \ }
" \}

let g:rainbow_active = 1

" ['blue', '#458588'], ['magenta', '#b16286']
" ['red',  '#cc241d'], ['166',     '#d65d0e']
