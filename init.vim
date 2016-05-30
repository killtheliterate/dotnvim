"" Hi, how are you?
"" ---------------------------------------------------------------------------
"" ❤ ☠ ⚒ ☞ ☛ ☚ ☜ » « ☹ → ← ⚔
"" http://xkcd.com/1172

"" Packages
"" ---------------------------------------------------------------------------
call plug#begin('$HOME/.config/nvim/plugins')

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

" PlPlPlugin:
Plug 'JazzCore/ctrlp-cmatcher', {'do': './install.sh'}
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'benekastah/neomake'
Plug 'bling/vim-bufferline'
Plug 'editorconfig/editorconfig-vim'
Plug 'floobits/floobits-neovim'
Plug 'jiangmiao/auto-pairs'
Plug 'kien/ctrlp.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'matze/vim-move'
Plug 'mhinz/vim-signify'
Plug 'mhinz/vim-startify'
Plug 'myusuf3/numbers.vim'
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'reedes/vim-pencil'
Plug 'rking/ag.vim'
Plug 'sjl/vitality.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'vim-airline/vim-airline'

" HhHhTML: kill me plox
Plug 'Valloric/MatchTagAlways', {'for': ['html', 'tpl']}
Plug 'gcmt/breeze.vim',         {'for': ['html', 'tpl']}

" Elixir: okay, cool
Plug 'slashmili/alchemist.vim'

" JjJjavactipt:
Plug 'carlitux/deoplete-ternjs'
Plug 'mxw/vim-jsx',         {'for': 'jsx'}
Plug 'othree/yajs.vim',     {'for': 'js'}
Plug 'ternjs/tern_for_vim', {'do': 'npm install'}

" HhHhaskell: kill me plox
Plug 'neovimhaskell/haskell-vim', {'for': ['hs', 'lhs']}

" TtTtTheme:
Plug 'chriskempson/base16-vim'

" SySySyntax:
Plug 'LeonB/vim-nginx'
Plug 'cakebaker/scss-syntax.vim', {'for': 'scss'}
Plug 'derekwyatt/vim-scala',      {'for': 'scala'}
Plug 'elixir-lang/vim-elixir'
Plug 'elm.vim',                   {'for': 'scala'}
Plug 'nono/vim-handlebars',       {'for': 'hbs'}
Plug 'plasticboy/vim-markdown',   {'for': ['md', 'markdown']}
Plug 'raichoo/purescript-vim',    {'for': 'psc'}
Plug 'tpope/vim-liquid',          {'for': ['html', 'tpl']}
Plug 'toyamarinyon/vim-swift',    {'for' : 'swift'}

call plug#end()

" filetype plugin indent on " unnecessary with vim-plug

"" The basixxx
"" ---------------------------------------------------------------------------

syntax on
let mapleader = "\<Space>"

" Theme:
set guifont=Source\ Code\ Pro\ for\ Powerline:h13

let base16colorspace='256'
colorscheme base16-default
set background=dark
if has('gui_running')
  set antialias
  set go-=T
endif

" A: mad settings
set sidescroll=1
set autoindent
set sessionoptions=resize,winpos,winsize,buffers,tabpages,folds,curdir,help
set backspace=indent,eol,start
set colorcolumn=79
set cursorline
set expandtab
set formatoptions+=w
set formatoptions=qrn1
set list
set listchars+=extends:→
set listchars+=precedes:←
set listchars+=tab:\┆\
set listchars+=trail:.
set listchars=""
set mouse=a
set mousehide
set nobackup
set noswapfile
set nowb
set nowrap
set number
set shiftwidth=2
set showmode
set splitbelow
set splitright
set tabstop=2
set textwidth=78
set timeoutlen=1000
set ttimeoutlen=10
set clipboard+=unnamedplus
set hidden
set autochdir

" B: search
set hlsearch
set ignorecase
set incsearch
set smartcase
nmap <silent> <Space>c :nohlsearch<CR>

" C: undo
let s:vim_cache = expand('$HOME/.config/nvim/backups')
if filewritable(s:vim_cache) == 0 && exists("*mkdir")
    call mkdir(s:vim_cache, "p", 0777)
endif
set undodir=$HOME/.config/nvim/backups
set undofile

" D: folds
set nofoldenable
" set foldenable
" set foldmethod=syntax
" set foldlevelstart=99

" E: wildcards
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
set wildignore+=*.swp,*~,._*

" F: mappings

" Yank without jank: http://bit.ly/1Wcj4dI
vnoremap <expr>y "my\"" . v:register . "y`y"

" preserve indentation on paste
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR> " preserve indent

" remove trailing whitespace
nnoremap <leader>rtw :%s/\s\+$//e<CR>

" move up and down by row
nnoremap j gj
nnoremap k gk

"" bubble lines
nmap <C-k> [e
nmap <C-j> ]e
vmap <C-k> [egv
vmap <C-j> ]egv

" leader leader to switch between last 2 buffers
nnoremap <leader><leader> <c-^>

" G: hilite
hi MatchParen cterm=bold ctermbg=darkmagenta ctermfg=white
hi Search cterm=NONE ctermfg=white ctermbg=5

" Sass: stop sucking, sass
au BufRead, BufNewFile *.scss set filetype=scss

" Haskell: http://bit.ly/1GsSOnp
" au Bufenter *.hs compiler ghc
" let g:haddock_browser = "open"
" let g:haddock_browser_callformat = "%s %s"

" HTML: and stuff
au BufReadPost *.tpl set syntax=html "set syntax=html
au BufNewFile,BufRead *.xml,*.tpl set filetype=html

"" Omni omni omni omni
"" ---------------------------------------------------------------------------

augroup omnifuncs
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup end

" tern
if exists('g:plugs["tern_for_vim"]')
  let g:tern_show_argument_hints = 'on_hold'
  let g:tern_show_signature_in_pum = 1
  autocmd FileType javascript setlocal omnifunc=tern#Complete
endif

"" Plug plug plug plug
"" ---------------------------------------------------------------------------

" Deoplete: https://goo.gl/LvwZZY
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_at_startup = 1
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif
" let g:deoplete#disable_auto_complete = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" Airline:
let g:airline_powerline_fonts = 1
let g:airline_section_b = '%{getcwd()}'
let g:airline_section_c = '%t'

" Startify:
let g:startify_custom_header = map(split(system('figlet -f  rozzo "DOOM"'), '\n'), '"   ". v:val') + ['','']

" Markdown:
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

" Rainbow:
let g:rbpt_max = 16
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
let g:rbpt_colorpairs = [
    \ [ '13', '#6c71c4'],
    \ [ '5',  '#d33682'],
    \ [ '1',  '#dc322f'],
    \ [ '9',  '#cb4b16'],
    \ [ '3',  '#b58900'],
    \ [ '2',  '#859900'],
    \ [ '6',  '#2aa198'],
    \ [ '4',  '#268bd2'],
\]

" NeoMake:  
" `cabal install ghc-mod` Haskell
" `npm install jshint -g` JavaScript
" `npm install eslint -g` JavaScript
autocmd! BufWritePost * Neomake
let g:neomake_warning_sign = {
    \ 'text': '✗',
    \ 'texthl': 'ErrorMsg',
    \ }
let g:neomake_error_sign = {
    \ 'text': '⚠',
    \ 'texthl': 'ErrorMsg',
    \ }

" RevealInFinder: set this to leader-e
function! s:RevealInFinder()
  if filereadable(expand("%"))
    let l:command = "open -R %"
  elseif getftype(expand("%:p:h")) == "dir"
    let l:command = "open %:p:h"
  else
    let l:command = "open ."
  endif
  execute ":silent! !" . l:command
  redraw!
endfunction
command! Reveal call <SID>RevealInFinder()

noremap <leader>e :Reveal<CR>

" CtrlP: be faster
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

let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }

let g:ctrlp_custom_ignore = {
    \ 'dir':  '\.git$\|\.yardoc\|public$|log\|tmp$',
    \ 'file': '\.so$\|\.dat$|\.DS_Store$'
\ }
