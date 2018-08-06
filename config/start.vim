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
Plug 'bounceme/poppy.vim'            " rainbows for parentheses
Plug 'ctrlpvim/ctrlp.vim'            " fuzzy file navigation
Plug 'editorconfig/editorconfig-vim' " indent the same...
Plug 'floobits/floobits-neovim'      " magic stuff
Plug 'itchyny/lightline.vim'         " an statusbar
Plug 'jiangmiao/auto-pairs'          " autocomplete brackets: @see: https://bit.ly/2qQYZ0P
Plug 'junegunn/vim-easy-align'       " align stuff... like csv columns
Plug 'justinmk/vim-dirvish'          " file navigation
Plug 'matze/vim-move'                " line-bubbling
Plug 'maximbaz/lightline-ale'        " show lint errors in lightline
Plug 'mechatroner/rainbow_csv'       " csv pretties
Plug 'mhinz/vim-signify'             " show git changes in gutter
Plug 'myusuf3/numbers.vim'           " relative line numbering
Plug 'sjl/vitality.vim'              " iterm2 + tmux fixes
Plug 'tomtom/tcomment_vim'           " comment out lines
Plug 'tpope/vim-eunuch'              " vim + bash stuff
Plug 'tpope/vim-fugitive'            " git stuff... mostly :Gblame
Plug 'tpope/vim-repeat'              " repeat operator for more stuff
Plug 'tpope/vim-surround'            " objects for surround stuff

Plug 'w0rp/ale', {'commit': '9ef266d', 'do': 'npm install -g standard'} " linting

"" IdIDE:
" Plug 'majutsushi/tagbar'
Plug 'valloric/youcompleteme'
" Plug 'craigemery/vim-autotag'
" Plug 'shougo/echodoc.vim'
" Plug 'sirver/ultisnips'
" Plug 'honza/vim-snippets'

"" JjJjavactipt: what is javascript?
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

"" HhHhTML: kill me plox
" Plug 'valloric/matchtagalways', {'for': ['html', 'tpl']}
" Plug 'gcmt/breeze.vim',         {'for': ['html', 'tpl']}
" Plug 'tpope/vim-liquid',        {'for': ['html', 'tpl']}

"" TyTypescript: chule
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
" Plug 'HerringtonDarkholme/yats.vim'
" Plug 'quramy/tsuquyomi' " collides with ALE

"" ElElixir: okay, cool
" Plug 'elixir-lang/vim-elixir',  {'for': 'elixir'}
" Plug 'slashmili/alchemist.vim', {'for': 'elixir'}

"" HhHhaskell: laws only
" Plug 'neovimhaskell/haskell-vim', {'for': ['haskell', 'cabal']}
" Plug 'parsonsmatt/intero-neovim', {'for': ['haskell', 'cabal']}

"" ScScScala: It's like JavaScript, but still bad
" Plug 'ensime/ensime-vim',         {'for': 'scala'}
" Plug 'derekwyatt/vim-scala',      {'for': 'scala'}

"" PuPuPurescript: Hmm. hmm.
" Plug 'raichoo/purescript-vim', {'for': 'purescript'}
" Plug 'FrigoEU/psc-ide-vim/',   {'for': 'purescript'}

"" CsCss:
" Plug 'othree/csscomplete.vim'
Plug 'ap/vim-css-color'
Plug 'cakebaker/scss-syntax.vim'
Plug 'juleswang/css.vim'


"" OtOtOther: Etc.
" Plug 'ericpruitt/tmux.vim', {'rtp': 'vim/'}
" Plug 'tmux-plugins/vim-tmux'
" Plug 'leonb/vim-nginx',           {'for': 'nginx'}
" Plug 'nono/vim-handlebars',       {'for': 'hbs'}
" Plug 'plasticboy/vim-markdown',   {'for': 'markdown'}
" Plug 'toyamarinyon/vim-swift',    {'for': 'swift'}
" Plug 'kylef/apiblueprint.vim',    {'for': 'apiblueprint'}
" Plug 'martinda/jenkinsfile-vim-syntax'

"" TtTtTheme: PRETTY PRETTY PRETTY PRETTY PRETTY PRETTY
Plug 'chriskempson/base16-vim', {'do': 'git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell'}

"" Lolkay: Some fance-shmance
Plug 'ryanoasis/vim-devicons'

call plug#end()
