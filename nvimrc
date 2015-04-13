"" Hi, how are you?
"" ---------------------------------------------------------------------------

"" NeoBundle Scripts
"" ---------------------------------------------------------------------------
if has('vim_starting')
  set runtimepath+=$HOME/.nvim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('$HOME/.nvim/bundle'))

" BeBeBegin:
NeoBundleFetch 'Shougo/neobundle.vim'

" PlPlPlugin:
NeoBundle 'benekastah/neomake'
NeoBundle 'bling/vim-airline'
NeoBundle 'bling/vim-bufferline'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'floobits/floobits-neovim'
NeoBundle 'godlygeek/tabular'
NeoBundle 'jiangmiao/auto-pairs'
NeoBundle 'justinmk/vim-matchparenalways'
NeoBundle 'kien/rainbow_parentheses.vim'
NeoBundle 'matze/vim-move'
NeoBundle 'mhinz/vim-signify'
NeoBundle 'mhinz/vim-startify'
NeoBundle 'myusuf3/numbers.vim'
NeoBundle 'rking/ag.vim'
NeoBundle 'sjl/vitality.vim'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-eunuch'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-git'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'tpope/vim-vinegar'

" NeoBundle 'mtth/scratch.vim'

" TtTtTheme:
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'freeo/vim-kalisi'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'chriskempson/base16-vim'


" SySySyntax:
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'idris-hackers/idris-vim'
NeoBundle 'jelera/vim-javascript-syntax'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'nono/vim-handlebars'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'raichoo/haskell-vim'
NeoBundle 'raichoo/purescript-vim'
NeoBundle 'tpope/vim-liquid'

" EtEtEtc:
" things that require neobundle's additional setup

call neobundle#end()

filetype plugin indent on

" check for updates, then onward!
NeoBundleCheck

"" The basixxx
"" ---------------------------------------------------------------------------

syntax on
" imap jk <esc>
let mapleader = "\<Space>"

" Theme:
set guifont=Source\ Code\ Pro\ for\ Powerline:h13
" colorscheme solarized
colorscheme base16-default
set background=dark
if has('gui_running')
  set antialias
  set go-=T
endif

" A: mad settings
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
let s:vim_cache = expand('$HOME/.nvim/backups')
if filewritable(s:vim_cache) == 0 && exists("*mkdir")
    call mkdir(s:vim_cache, "p", 0777)
endif
set undodir=$HOME/.nvim/backups
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

" stop sucking, sass
au BufRead,BufNewFile *.scss set filetype=scss

"" Plug plug plug plug
"" ---------------------------------------------------------------------------

" Airline:
let g:airline_powerline_fonts = 1
let g:airline_section_b = '%{getcwd()}'
let g:airline_section_c = '%t'
" let g:airline#extensions#tabline#enabled = 1

" Startify:
let g:startify_custom_header = map(split(system('figlet -f  rozzo "DOOM"'), '\n'), '"   ". v:val') + ['','']

" Markdown:
let g:vim_markdown_frontmatter=1
au BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['coffee', 'css', 'erb=eruby', 'javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'xml', 'html']

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

" MatchParenAlways:
let g:blockify_pairs = {
\ 'c':    [ '{', '}' ],
\ 'cpp':  [ '{', '}' ],
\ 'java': [ '{', '}' ],
\ 'php': [ '{', '}' ],
\ 'css': [ '{', '}' ],
\ 'scss.css': [ '{', '}' ],
\ 'scss': [ '{', '}' ],
\ 'javascript': [ '{', '}' ],
\ 'php.drupal': [ '{', '}' ],
\}

" NeoMake:  
autocmd! BufWritePost * Neomake
let g:neomake_make_modified=1
let g:neomake_warning_sign = {
    \ 'text': '✗',
    \ 'texthl': 'ErrorMsg',
    \ }
let g:neomake_error_sign = {
    \ 'text': '⚠',
    \ 'texthl': 'ErrorMsg',
    \ }
