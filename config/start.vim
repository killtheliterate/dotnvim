"" Start
"" ---------------------------------------------------------------------------
"" Load plugins with vim-plug, that type of thing.

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('$HOME/.config/nvim/.plugged')

" PlPlPlugin:
Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
Plug 'bling/vim-bufferline'
Plug 'brooth/far.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
" Plug 'ericpruitt/tmux.vim', {'rtp': 'vim/'}
Plug 'ervandew/supertab'
Plug 'itchyny/lightline.vim'
Plug 'janko-m/vim-test'
Plug 'jceb/vim-orgmode'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'justinmk/vim-dirvish'
Plug 'luochen1990/rainbow'
Plug 'machakann/vim-highlightedyank'
" Plug 'floobits/floobits-neovim'
Plug 'freitass/todo.txt-vim'
Plug 'matze/vim-move'
Plug 'metakirby5/codi.vim' " WHOOOOOAAAAAAAAAA
Plug 'mhinz/vim-signify'
Plug 'mhinz/vim-startify'
" Plug 'mileszs/ack.vim'
Plug 'mklabs/vim-json'
Plug 'myusuf3/numbers.vim'
Plug 'reedes/vim-pencil'
" Plug 'rking/ag.vim' // deprecated
Plug 'sjl/vitality.vim'
Plug 'tomtom/tcomment_vim'
" Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar' " @see http://bit.ly/2gyTOwp
Plug 'w0rp/ale', {'do': 'npm install -g standard'}

" I remember my first IDE:
" Plug 'honza/vim-snippets'
Plug 'othree/csscomplete.vim'
Plug 'roxma/nvim-cm-tern'           , {'do': 'npm install'}
Plug 'roxma/nvim-completion-manager', {'do': 'pip3 install --user neovim jedi mistune psutil setproctitle'}
Plug 'eagletmt/neco-ghc',             {'for': ['haskell', 'cabal'], 'do': 'stack install ghc-mod'}
Plug 'Shougo/neco-vim',               {'for': 'vim'}
Plug 'sirver/ultisnips'

" " HhHhTML: kill me plox
Plug 'Valloric/MatchTagAlways', {'for': ['html', 'tpl']}
Plug 'gcmt/breeze.vim',         {'for': ['html', 'tpl']}
Plug 'tpope/vim-liquid',        {'for': ['html', 'tpl']}

" Elixir: okay, cool
Plug 'elixir-lang/vim-elixir',  {'for': 'elixir'}
Plug 'slashmili/alchemist.vim', {'for': 'elixir'}

" JjJjavactipt: what is javascript?
Plug 'mxw/vim-jsx',              {'for': ['javascript', 'javascript.jsx']}
Plug 'pangloss/vim-javascript',  {'for': ['javascript', 'javascript.jsx']}

" HhHhaskell: laws only
Plug 'neovimhaskell/haskell-vim', {'for': ['haskell', 'cabal']}
Plug 'parsonsmatt/intero-neovim', {'for': ['haskell', 'cabal']}

" ScScScala: It's like JavaScript, but still bad
Plug 'ensime/ensime-vim',         {'for': 'scala'}
Plug 'derekwyatt/vim-scala',      {'for': 'scala'}

" PuPuPurescript: Hmm. hmm.
Plug 'raichoo/purescript-vim', {'for': 'purescript'}
Plug 'FrigoEU/psc-ide-vim/',   {'for': 'purescript'}
"
" " OtOtOther: Etc.
Plug 'tmux-plugins/vim-tmux'
Plug 'LeonB/vim-nginx',           {'for': 'nginx'}
Plug 'cakebaker/scss-syntax.vim', {'for': 'scss'}
Plug 'nono/vim-handlebars',       {'for': 'hbs'}
Plug 'plasticboy/vim-markdown',   {'for': 'markdown'}
Plug 'toyamarinyon/vim-swift',    {'for': 'swift'}
Plug 'kylef/apiblueprint.vim',    {'for': 'apiblueprint'}

" " OtOtOtherOtOtOther: Can't remember
" Plug 'powerman/vim-plugin-AnsiEsc'
" Plug 'tmux-plugins/vim-tmux-focus-events'

" Plug 'sheerun/vim-polyglot'

" TtTtTheme: PRETTY PRETTY PRETTY PRETTY PRETTY PRETTY
Plug 'chriskempson/base16-vim', {'do': 'git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell'}

" Lolkay: Some fance-shmance
Plug 'ryanoasis/vim-devicons'

call plug#end()
