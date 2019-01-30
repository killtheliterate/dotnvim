" ----------------------------------------------------------------------------
"  :ALEInfo to begin debugging
" ----------------------------------------------------------------------------

let g:ale_completion_enabled = 0
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'
let g:ale_fix_on_save = 1
nmap <Tab> <Plug>(ale_detail)
nmap gd <Plug>(ale_go_to_definition_in_tab)
set statusline=%{LinterStatus()}

" ale-sensible: https://github.com/desmap/ale-sensible
" ----------------------------------------------------------------------------
"  DISABLES SIGNS!!!

let g:ale_lint_delay = 0
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_text_changed = 'normal'
let g:ale_set_signs = 0 

au VimEnter,BufEnter,ColorScheme *
  \ exec "hi! ALEInfoLine
    \ guifg=".(&background=='light'?'#808000':'#ffff00')."
    \ guibg=".(&background=='light'?'#ffff00':'#555500') |
  \ exec "hi! ALEWarningLine
    \ guifg=".(&background=='light'?'#808000':'#ffff00')."
    \ guibg=".(&background=='light'?'#ffff00':'#555500') |
  \ exec "hi! ALEErrorLine
    \ guifg=".(&background=='light'?'#ff0000':'#ff0000')."
\ guibg=".(&background=='light'?'#ffcccc':'#550000')

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
    let s:js_linters = ['eslint']
    let s:js_fixers = ['eslint']
else
    let s:js_linters = ['standard']
    let s:js_fixers = ['standard']
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
    \ )
endfunction

" Do not lint or fix minified files.
" ----------------------------------------------------------------------------

let g:ale_pattern_options = {
\   '\.bundle\.css$': {'ale_enabled': 0},
\   '\.bundle\.js$': {'ale_enabled': 0},
\   '\.chunk\.css$': {'ale_enabled': 0},
\   '\.chunk\.js$': {'ale_enabled': 0},
\   '\.min\.css$': {'ale_enabled': 0},
\   '\.min\.js$': {'ale_enabled': 0},
\   '.*node_modules/*/.*$': {'ale_enabled': 0},
\ }

" Linters / Fixers
"
" tsserver: @see: https://github.com/w0rp/ale/issues/20#issuecomment-298776249
" ----------------------------------------------------------------------------

let g:ale_linters = {
\   'javascript': s:js_linters,
\   'typescript': ['tsserver'], 
\   'scss': ['stylelint'],
\ }

let g:ale_fixers = {
\   'javascript': s:js_fixers,
\   'typescript': ['tslint'],
\   'scss': ['stylelint'],
\ }
