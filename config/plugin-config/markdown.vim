"" Markdown
"" ---------------------------------------------------------------------------

let g:vim_markdown_frontmatter=1
au BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = [
    \ 'css', 
    \ 'erb=eruby', 
    \ 'javascript', 
    \ 'js=javascript', 
    \ 'json=javascript', 
    \ 'ruby', 
    \ 'sass', 
    \ 'xml', 
    \ 'html'
\]
augroup Markdown
    autocmd Filetype markdown set shiftwidth=4
    autocmd Filetype markdown setlocal spell spelllang=en_us
augroup END
