"" Colors:
"" ---------------------------------------------------------------------------
"" What a pain, amirite?
"" 
"" TODO: this is currently shitty

" @see: http://andrewradev.com/2011/08/06/making-vim-pretty-with-custom-color s
" @see: https://alvinalexander.com/linux/vi-vim-editor-color-scheme-syntax
" @see: http://vimdoc.sourceforge.net/htmldoc/syntax.html#highlight-ctermbg
" NR-16 NR-8 COLOR NAME 
" 0     0    Black
" 1     4    DarkBlue
" 2     2    DarkGreen
" 3     6    DarkCyan
" 4     1    DarkRed
" 5     5    DarkMagenta
" 6     3    Brown, DarkYellow
" 7     7    LightGray, LightGrey, Gray, Grey
" 8     0*   DarkGray, DarkGrey
" 9     4*   Blue, LightBlue
" 10    2*   Green, LightGreen
" 11    6*   Cyan, LightCyan
" 12    1*   Red, LightRed
" 13    5*   Magenta, LightMagenta
" 14    3*   Yellow, LightYellow
" 15    7*   White

let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"

set termguicolors

func! GetBase16(id)
  if filereadable(expand("~/.vimrc_background"))
    let base16colorspace=256
    source ~/.vimrc_background
  endif
endf

"" base16:
" ----------------------------------------------------------------------------

call GetBase16('init')
call timer_start(500, 'GetBase16', {'repeat':-1})
