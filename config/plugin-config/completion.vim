"" @TODO: Finish setting up
"" @see: https://www.gregjs.com/vim/2016/neovim-deoplete-jspc-ultisnips-and-tern-a-config-for-kickass-autocompletion

"" Omni omni omni omni
"" ---------------------------------------------------------------------------

augroup omnifuncs
  autocmd!
  autocmd FileType css                       setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown             setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript,javascript.jsx setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python                    setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml                       setlocal omnifunc=xmlcomplete#CompleteTags
augroup end

"" Deoplete 
"" ---------------------------------------------------------------------------
"" https://goo.gl/LvwZZY

" Use deoplete.
let g:deoplete#enable_at_startup = 1

if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif

" let g:deoplete#disable_auto_complete = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" tern
if exists('g:plugs["tern_for_vim"]')
  let g:tern_show_argument_hints = 'on_hold'
  let g:tern_show_signature_in_pum = 1
  autocmd FileType javascript,javascript.jsx setlocal omnifunc=tern#Complete
endif
