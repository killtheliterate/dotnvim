"" Start
"" ---------------------------------------------------------------------------
"" Load plugins with vim-plug, that type of thing.

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('$HOME/.config/nvim/.plugged')

"" PlPlPlugin:
Plug 'justinmk/vim-dirvish'            " file navigation... F I R S T

Plug 'blueyed/vim-diminactive'         " dim inactive split
Plug 'ciaranm/securemodelines'         " less haxx
Plug 'editorconfig/editorconfig-vim'   " indent the same...
Plug 'itchyny/lightline.vim'           " an statusbar
Plug 'junegunn/vim-easy-align'         " align stuff... like csv columns
Plug 'kristijanhusak/vim-dirvish-git'  " dirvish git stuff
Plug 'mhinz/vim-signify'               " show git changes in gutter
Plug 'myusuf3/numbers.vim'             " relative line numbering
Plug 'nathanaelkane/vim-indent-guides' " what it says
Plug 'sjl/vitality.vim'                " iterm2 + tmux fixes
Plug 'tomtom/tcomment_vim'             " comment out lines
Plug 'tpope/vim-eunuch'                " vim + bash stuff
Plug 'tpope/vim-fugitive'              " git stuff... mostly :Git blame
Plug 'tpope/vim-repeat'                " repeat operator for more stuff
Plug 'tpope/vim-surround'              " objects for surround stuff
Plug 'tribela/vim-transparent'         " guake looking niiiiice

"" EtEtEtC:
Plug 'ryanoasis/vim-devicons'

" F U Z Z: find files
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'

"" IdIDE:
Plug 'ludovicchabant/vim-gutentags'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
" Plug 'p00f/nvim-ts-rainbow'

"" CoCOC:
Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/remote', 'do': ':UpdateRemotePlugins' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" TtTtTheme: PRETTY PRETTY PRETTY PRETTY PRETTY PRETTY
Plug 'chriskempson/base16-vim', {'do': 'git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell'}
Plug 'daviesjamie/vim-base16-lightline'
" @see: https://github.com/RRethy/nvim-base16

call plug#end()
