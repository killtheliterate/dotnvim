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
Plug 'justinmk/vim-dirvish'           " file navigation... F I R S T

Plug 'blueyed/vim-diminactive'        " dim inactive split
Plug 'bounceme/poppy.vim'             " rainbows for parentheses
Plug 'ciaranm/securemodelines'        " less haxx
Plug 'editorconfig/editorconfig-vim'  " indent the same...
 "Plug 'floobits/floobits-neovim'       " magic stuff
Plug 'itchyny/lightline.vim'          " an statusbar
Plug 'jiangmiao/auto-pairs'           " autocomplete brackets: @see: https://bit.ly/2qQYZ0P
Plug 'junegunn/vim-easy-align'        " align stuff... like csv columns
Plug 'kristijanhusak/vim-dirvish-git' " dirvish git stuff
Plug 'matze/vim-move'                 " line-bubbling
" Plug 'maximbaz/lightline-ale'         " show lint errors in lightline
Plug 'mechatroner/rainbow_csv'        " csv pretties
Plug 'mhinz/vim-signify'              " show git changes in gutter
Plug 'myusuf3/numbers.vim'            " relative line numbering
Plug 'sjl/vitality.vim'               " iterm2 + tmux fixes
Plug 'tomtom/tcomment_vim'            " comment out lines
Plug 'tpope/vim-eunuch'               " vim + bash stuff
Plug 'tpope/vim-fugitive'             " git stuff... mostly :Gblame
Plug 'tpope/vim-repeat'               " repeat operator for more stuff
Plug 'tpope/vim-surround'             " objects for surround stuff

"" EtEtEtC:
Plug 'ryanoasis/vim-devicons'

" F U Z Z: find files
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'

"" IdIDE:
Plug 'antoinemadec/coc-fzf'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
" Plug 'w0rp/ale', {'do': 'npm install -g standard'} " linting

"" JaJavaScript:
" Plug 'heavenshell/vim-jsdoc'
" Plug 'leafgarland/typescript-vim'
" Plug 'othree/javascript-libraries-syntax.vim'
" Plug 'peitalin/vim-jsx-typescript'
" Plug 'maxmellon/vim-jsx-pretty'

"" TyTyTypeScript:
" Plug 'ianks/vim-tsx'
" Plug 'leafgarland/typescript-vim'

"" TyTyTypeScript:
" Plug 'mxw/vim-jsx'
" Plug 'leafgarland/typescript-vim'

"" TyTyTypeScript:
" Plug 'herringtondarkholme/yats.vim'

" TtTtTheme: PRETTY PRETTY PRETTY PRETTY PRETTY PRETTY
Plug 'chriskempson/base16-vim', {'do': 'git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell'}

call plug#end()
