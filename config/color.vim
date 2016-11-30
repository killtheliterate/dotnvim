"" Colors
"" ---------------------------------------------------------------------------
"" What a pain, amirite?
""
"" There are a few different ways to set this up. One is to just use your
"" terminal's profiles to set up the correct colors. Another is to
"" base16-shell to have your session set your colors. Both ways suck differently
""
"" base16-shell: http://bit.ly/1TUoyt7
"" SO post: http://bit.ly/1RTSUEn
"" 
"" TODO: this is currently shitty

set termguicolors

" https://medium.com/@ericclifford/neovim-item2-truecolor-awesome-70b975516849#.hiis8kohp
" colorscheme base16-default-dark
colorscheme gruvbox
set background=dark

" https://github.com/tmux/tmux/issues/435#issuecomment-226849415


" uncomment this is you're using base16-shell
" let base16colorspace='256'
"
" if you're using iTerm2, it may be easier to just set this shell variable with
" an iTerm2 profile, and avoid base16-shell entirely. I was using it due to
" some color glitchy thing on Ubuntu.

" let &background=$BASE16_MODE

" function UpdateColors(arg)
"   if ($BASE16_MODE == "light")
"     execute ":set background=light"
"   else
"     execute ":set background=dark"
"   endif
" endfunction

" if has('timers')
"   let timer = timer_start(0, 'UpdateColors', {'repeat': -1})
" else
" endif
