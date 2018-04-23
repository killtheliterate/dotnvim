augroup Poppy
  autocmd!
  autocmd CursorMoved * call PoppyInit()
augroup end


" nnoremap <silent> <leader>hp :call clearmatches() \| let g:poppy = -get(g:,'poppy',-1) \|
"       \ exe 'au! Poppy CursorMoved *' . (g:poppy > 0 ? ' call PoppyInit()' : '') <cr>

" @TODO: Need better colors
"
" @see: https://jordanelver.co.uk/blog/2015/05/27/working-with-vim-colorschemes/
"
" Should come up with a highlight group that does foreground and background,
" beccause the blocks are really easy to see.
" let g:poppyhigh = ['WildMenu']

let g:poppy_point_enable = 1
