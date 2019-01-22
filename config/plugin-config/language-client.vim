set hidden

" Automatically start language servers.
let g:LanguageClient_autoStart = 1

" Minimal LSP configuration for JavaScript
let g:LanguageClient_serverCommands = {}

if executable('javascript-typescript-stdio')
  let g:LanguageClient_serverCommands.javascript = ['javascript-typescript-stdio']
  let g:LanguageClient_serverCommands.typescript = ['javascript-typescript-stdio']
  let g:LanguageClient_serverCommands['javascript.jsx'] = ['javascript-typescript-stdio']
  let g:LanguageClient_serverCommands['typescript.jsx'] = ['javascript-typescript-stdio']
else
  echo "javascript-typescript-stdio not installed!\n"
endif

" if executable('typescript-language-server')
"   let g:LanguageClient_serverCommands.typescript = ['typescript-language-server', '--stdio']
"   let g:LanguageClient_serverCommands['typescript.tsx'] = ['typescript-language-server', '--stdio']
" else
"   echo "typescript-language-server not installed!\n"
" endif

" nnoremap <F5> :call LanguageClient_contextMenu()<CR>
