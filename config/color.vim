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

colorscheme base16-default

" uncomment this is you're using base16-shell
let base16colorspace='256'
"
" if you're using iTerm2, it may be easier to just set this shell variable with
" an iTerm2 profile, and avoid base16-shell entirely. I was using it due to
" some color glitchy thing on Ubuntu.

if ($BASE16_MODE == "light")
  set background=light
else
  set background=dark
endif
