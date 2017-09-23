let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'

let g:ale_fix_on_save = 1
highlight clear ALEErrorSign
highlight clear ALEWarningSign

" let g:ale_lint_on_text_changed = 'never'

" Eslint vs. Standard
" ----------------------------------------------------------------------------

function! CheckForEslintPkgJson() abort
  let packagejsonpath = findfile('package.json', '.;')

  if packagejsonpath !=# ''
    let packagejson = join(readfile(packagejsonpath), '')

    return has_key(JSON#parse(packagejson), 'eslintConfig')
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

if CheckForEslint()
  let g:ale_linters = {
  \   'javascript': ['eslint'],
  \ }

  let g:ale_fixers = {
  \   'javascript': ['eslint'],
  \ }
else
  let g:ale_linters = {
  \   'javascript': ['standard'],
  \ }

  let g:ale_fixers = {
  \   'javascript': ['standard'],
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

" Fixer
" ----------------------------------------------------------------------------

let g:ale_fix_on_save=1

set statusline=%{LinterStatus()}
