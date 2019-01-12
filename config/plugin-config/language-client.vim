set hidden

" Automatically start language servers.
let g:LanguageClient_autoStart = 1

let g:LanguageClient_serverCommands = {
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'ocaml': ['ocaml-language-server', '--stdio'],
    \ 'python': ['/usr/local/bin/pyls'],
    \ 'reason': ['ocaml-language-server', '--stdio'],
    \ }

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
