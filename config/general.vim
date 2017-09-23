"" General
"" ---------------------------------------------------------------------------
"" The basixxx

syntax on
let mapleader = "\<Space>"

" set encoding=utf8

" Theme:
" A: mad settings
"
set clipboard^=unnamed,unnamedplus
" if system('uname -s') == "Darwin" " osx
"   set clipboard=unnamed " @see: http://bit.ly/3ie2GeK
" else " nix
"   set clipboard=unnamedplus
" endif
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
set hidden

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

" TODO: add mapping so window switching works better with tmux

"" bubble lines: replaced by matze/vim-move
" nmap <C-k> [e
" nmap <C-j> ]e
" vmap <C-k> [egv
" vmap <C-j> ]egv

" leader leader to switch between last 2 buffers
nnoremap <leader><leader> <c-^>

" Sass: stop sucking, sass
au BufRead, BufNewFile *.scss set filetype=scss

" HTML: and stuff
au BufReadPost *.tpl set syntax=html "set syntax=html
au BufNewFile,BufRead *.xml,*.tpl set filetype=html

" Scala: etc
autocmd BufWritePost *.scala silent :EnTypeCheck
nnoremap <localleader>t :EnTypeCheck<CR>

" Ooh, cool
set inccommand=nosplit
