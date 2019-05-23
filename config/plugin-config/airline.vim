function! Filename()
  return (expand('%:t') != '' ? expand('%:p:h:t') . '/' . expand('%:t') : '[No Name]')
endfunction

let g:airline_powerline_fonts = 1
let g:airline_section_c = "%{Filename()}"

" let g:airline_section_d = "%{coc#status()}"
" let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
" let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'
