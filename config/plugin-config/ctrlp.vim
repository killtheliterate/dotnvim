"" CtrlP 
"" ---------------------------------------------------------------------------
"" Be faster

let g:ctrlp_use_caching = 1

if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
else
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
  let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<space>', '<cr>', '<2-LeftMouse>'],
    \ }
endif

" let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }

let g:ctrlp_custom_ignore = {
    \ 'dir':  '\.git$\|\.yardoc\|public$|log\|tmp$',
    \ 'file': '\.so$\|\.dat$|\.DS_Store$'
    \ }
