" ----------------------------------------------------------------------------
"  :ALEInfo to begin debugging
" ----------------------------------------------------------------------------

let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'

let g:ale_fix_on_save = 1

nmap <Tab> <Plug>(ale_detail)
nmap gd <Plug>(ale_go_to_definition_in_tab)

" Eslint vs. Standard vs. Tslint
" ----------------------------------------------------------------------------

function! CheckForEslintPkgJson() abort
  let packagejsonpath = findfile('package.json', '.;')

  if packagejsonpath !=# ''
    let packagejson = join(readfile(packagejsonpath), '')

    return has_key(json_decode(packagejson), 'eslintConfig')
  else
    return 0
  endif
endfunction

function! CheckForEslint()

  " @see: https://vimhelp.appspot.com/editing.txt.html#file-searching
  let eslintconfig =
  \ findfile('.eslintrc', '.;', -1) +
  \ findfile('.eslintrc.js', '.;', -1) +
  \ findfile('.eslintrc.json', '.;', -1) +
  \ findfile('.eslintrc.yaml', '.;', -1) +
  \ findfile('.eslintrc.yml', '.;', -1)

  if len(eslintconfig) > 0
    return 1
  else
    return CheckForEslintPkgJson()
  endif
endfunction

" Might not need an explicit setting for tsserver
"
" @see: https://github.com/w0rp/ale/issues/20#issuecomment-298776249
if CheckForEslint()
  let g:ale_linters = {
  \   'javascript': ['eslint'],
  \   'typescript': ['tsserver'],
  \ }

  let g:ale_fixers = {
  \   'javascript': ['eslint'],
  \   'typescript': ['tslint'],
  \ }
else
  let g:ale_linters = {
  \   'javascript': ['standard'],
  \   'typescript': ['tsserver'],
  \ }

  let g:ale_fixers = {
  \   'javascript': ['standard'],
  \   'typescript': ['tslint'],
  \ }
endif

" Status line
" ----------------------------------------------------------------------------

function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return l:counts.total == 0 ? 'OK' : printf(
    \   '%dW %dE',
    \   all_non_errors,
    \   all_errors
    \)
endfunction


" Alias
" ----------------------------------------------------------------------------

" trying to get linting/fixing working with YATS
" let g:ale_linter_aliases = {'typescriptreact': 'typescript.jsx'}

" Fixer
" ----------------------------------------------------------------------------

let g:ale_fix_on_save=1

set statusline=%{LinterStatus()}

" Do not lint or fix minified files.
" ----------------------------------------------------------------------------

let g:ale_pattern_options = {
\   '\.bundle\.css$': {'ale_linters': [], 'ale_fixers': []},
\   '\.bundle\.js$': {'ale_linters': [], 'ale_fixers': []},
\   '\.chunk\.css$': {'ale_linters': [], 'ale_fixers': []},
\   '\.chunk\.js$': {'ale_linters': [], 'ale_fixers': []},
\   '\.min\.css$': {'ale_linters': [], 'ale_fixers': []},
\   '\.min\.js$': {'ale_linters': [], 'ale_fixers': []},
\ }

" Enable completion where available.
" ----------------------------------------------------------------------------

let g:ale_completion_enabled = 1
