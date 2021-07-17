"" General
"" ---------------------------------------------------------------------------
"" The basixxx

let mapleader = "\<Space>"

"" A: mad settings
set clipboard^=unnamed,unnamedplus
set colorcolumn=79
set cursorline
set expandtab
set formatoptions+=w
set formatoptions+=qrn1
set hidden
set list
set listchars+=extends:→
set listchars+=precedes:←
set listchars+=tab:\┆\
set listchars+=trail:.
" set listchars=""
set mouse=a
set mousehide
set nobackup
set noswapfile
set nowb
set nowrap
set number
set sessionoptions=resize,winpos,winsize,buffers,tabpages,folds,curdir,help
set shiftwidth=2
set sidescroll=1
set splitbelow
set splitright
set tabstop=2
set textwidth=78

"" B: search
nmap <silent> <Space>c :nohlsearch<CR>
set ignorecase
set smartcase

"" C: undo
let s:vim_cache = expand('$HOME/.config/nvim/backups')
if filewritable(s:vim_cache) == 0 && exists("*mkdir")
    call mkdir(s:vim_cache, "p", 0777)
endif
set undodir=$HOME/.config/nvim/backups
set undofile

"" D: folds
set nofoldenable

"" E: wildcards
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
set wildignore+=*.swp,*~,._*
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

"" F: mappings
" Yank without jank: http://bit.ly/1Wcj4dI
vnoremap <expr>y "my\"" . v:register . "y`y"

" preserve indentation on paste
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR> " preserve indent

" remove trailing whitespace
nnoremap <leader>rtw :%s/\s\+$//e<CR>

" Ooh, cool
set inccommand=nosplit
