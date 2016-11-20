"" Airline 
"" ---------------------------------------------------------------------------

let g:airline_powerline_fonts = 1
" let g:airline_section_b = '%{getcwd()}'
" let g:airline_section_c = '%t'
let g:airline_section_c = '%<%F%m %#__accent_red#%{airline#util#wrap(airline#parts#readonly(),0)}%#__restore__#'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
