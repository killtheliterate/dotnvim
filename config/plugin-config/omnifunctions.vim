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
