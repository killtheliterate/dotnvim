
" debugging junk
" call gutentags#toggletrace()
" let g:gutentags_trace = 1
" @see: https://github.com/ludovicchabant/vim-gutentags/issues/169

" Make sure universal-ctags is installed
" brew install universal-ctags

set tags=~/.cache/tags/.tags;,.tags
set statusline+=%{gutentags#statusline()}

let g:gutentags_cache_dir = expand('~/.cache/tags')
let g:gutentags_ctags_extra_args = ['--fields=+ainKz']
let g:gutentags_ctags_tagfile = '.tags'
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

augroup MyGutentagsStatusLineRefresher
  autocmd!
  autocmd User GutentagsUpdating call lightline#update()
  autocmd User GutentagsUpdated call lightline#update()
augroup END
