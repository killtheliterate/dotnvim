"" General
"" ---------------------------------------------------------------------------
"" The basixxx

syntax on
let mapleader = "\<Space>"

"" A: mad settings
set autoindent
set backspace=indent,eol,start
set clipboard^=unnamed,unnamedplus
set colorcolumn=79
set cursorline
set expandtab
set formatoptions+=w
set formatoptions=qrn1
set hidden
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
set sessionoptions=resize,winpos,winsize,buffers,tabpages,folds,curdir,help
set shiftwidth=2
set showmode
set sidescroll=1
set splitbelow
set splitright
set tabstop=2
set textwidth=78
set timeoutlen=1000
set ttimeoutlen=10

"" B: search
nmap <silent> <Space>c :nohlsearch<CR>
set hlsearch
set ignorecase
set incsearch
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

" dynamic colorcolumn
au BufNewFile,BufRead *.ts setlocal colorcolumn=120
au BufNewFile,BufRead *.tsx setlocal colorcolumn=120

" @see: https://dockyard.com/blog/2013/09/26/vim-moving-lines-aint-hard
" vim-move stopped working
" maybe try https://github.com/fedepujol/move.nvim
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv
