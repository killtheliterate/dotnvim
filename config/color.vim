"" Colors:
"" ---------------------------------------------------------------------------
"" What a pain, amirite?
"" 
"" TODO: this is currently shitty

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
