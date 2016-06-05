"" RevealInFinder 
"" ---------------------------------------------------------------------------
"" This isn't a plugin.

" set this to leader-e
function! s:RevealInFinder()
  if filereadable(expand("%"))
    let l:command = "open -R %"
  elseif getftype(expand("%:p:h")) == "dir"
    let l:command = "open %:p:h"
  else
    let l:command = "open ."
  endif
  execute ":silent! !" . l:command
  redraw!
endfunction
command! Reveal call <SID>RevealInFinder()

noremap <leader>e :Reveal<CR>
