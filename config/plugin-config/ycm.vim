let g:ycm_allow_changing_updatetime = 0

if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif

" let g:ycm_semantic_triggers["typescript"] = ["."]

"@see: https://github.com/Valloric/YouCompleteMe/issues/413#issuecomment-346892162
let g:ycm_semantic_triggers = {
\   'css': [ 're!^\s{2}', 're!:\s+' ],
\   'scss': [ 're!^\s{2}', 're!:\s+' ],
\   'typescript': ['.']
\ }
