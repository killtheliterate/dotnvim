function! Filename()
  return (expand('%:t') != '' ? expand('%:p:h:t') . '/' . expand('%:t') : '[No Name]')
endfunction

let g:airline_powerline_fonts = 1
let g:airline_section_c = "%{Filename()}"
