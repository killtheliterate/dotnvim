" Sass: stop sucking, sass
" au BufRead, BufNewFile *.scss set filetype=scss

" HTML: and stuff
" au BufReadPost *.tpl set syntax=html "set syntax=html
" au BufNewFile,BufRead *.xml,*.tpl set filetype=html

" Scala: etc
" autocmd BufWritePost *.scala silent :EnTypeCheck
" nnoremap <localleader>t :EnTypeCheck<CR>
