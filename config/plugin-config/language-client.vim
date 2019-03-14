set hidden

" Automatically start language servers.
let g:LanguageClient_autoStart = 1

" Minimal LSP configuration for JavaScript
let g:LanguageClient_serverCommands = {}

let g:LanguageClient_loggingFile = expand('~/.config/nvim/LanguageClient.log')
let g:LanguageClient_serverStderr = expand('~/.config/nvim/LanguageServer.log')
let g:LanguageClient_loggingLevel = 'INFO'

if executable('javascript-typescript-stdio')
  let g:LanguageClient_serverCommands.javascript = ['javascript-typescript-stdio']
  let g:LanguageClient_serverCommands.typescript = ['javascript-typescript-stdio']
  let g:LanguageClient_serverCommands['javascript.jsx'] = ['javascript-typescript-stdio']
  " let g:LanguageClient_serverCommands['typescript.jsx'] = ['javascript-typescript-stdio']
  let g:LanguageClient_serverCommands['typescript.tsx'] = ['javascript-typescript-stdio']
else
  echo "javascript-typescript-stdio not installed!\n"
endif

set completefunc=LanguageClient#complete

" nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
