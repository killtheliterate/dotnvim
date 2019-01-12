"" Deoplete 
"" ---------------------------------------------------------------------------
"" http://bit.ly/2duFHbJ

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" if !exists('g:deoplete#omni#input_patterns')
"   let g:deoplete#omni#input_patterns = {}
" endif
" " let g:deoplete#disable_auto_complete = 1
" autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" tern
"" ---------------------------------------------------------------------------

" if exists('g:plugs["tern_for_vim"]')
"   let g:tern_show_argument_hints = 'on_hold'
"   let g:tern_show_signature_in_pum = 1
"   autocmd FileType javascript setlocal omnifunc=tern#Complete
" endif
"
" let g:tern_request_timeout = 1
" let g:tern_show_signature_in_pum = '0'  " This do disable full signature type on autocomplete
"
" "Add extra filetypes
" let g:tern#filetypes = [
"                 \ 'jsx',
"                 \ 'javascript.jsx',
"                 \ 'vue',
"                 \ '...'
"                 \ ]
"" Supertab
"" ---------------------------------------------------------------------------

" autocmd FileType javascript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" set completeopt-=preview
