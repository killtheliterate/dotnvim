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
Plug 'ctrlpvim/ctrlp.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs' " @see: https://bit.ly/2qQYZ0P
Plug 'justinmk/vim-dirvish'
Plug 'bounceme/poppy.vim'
Plug 'matze/vim-move'
Plug 'maximbaz/lightline-ale'
Plug 'mhinz/vim-signify'
Plug 'myusuf3/numbers.vim'
Plug 'sjl/vitality.vim'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'w0rp/ale', {'do': 'npm install -g standard'}

"" IdIDE:
Plug 'Valloric/YouCompleteMe'
" Plug 'honza/vim-snippets'
" Plug 'othree/csscomplete.vim'
" Plug 'roxma/nvim-cm-tern'           , {'do': 'npm install'}
" Plug 'roxma/nvim-completion-manager', {'do': 'pip3 install --user neovim jedi mistune psutil setproctitle'}
" Plug 'eagletmt/neco-ghc',             {'for': ['haskell', 'cabal'], 'do': 'stack install ghc-mod'}
" Plug 'Shougo/neco-vim',               {'for': 'vim'}

"" JjJjavactipt: what is javascript?
Plug 'pangloss/vim-javascript'
" Plug 'maxmellon/vim-jsx-pretty', {'for': ['javascript', 'javascript.jsx', 'typescript', 'typescript.jsx']}
" " Plug 'mxw/vim-jsx',              {'for': ['javascript', 'javascript.jsx']}
" " Plug 'othree/yajs.vim',          {'for': ['javascript', 'javascript.jsx']}

"" HhHhTML: kill me plox
" Plug 'valloric/matchtagalways', {'for': ['html', 'tpl']}
" Plug 'gcmt/breeze.vim',         {'for': ['html', 'tpl']}
" Plug 'tpope/vim-liquid',        {'for': ['html', 'tpl']}

"" TyTypescript: chule
Plug 'leafgarland/typescript-vim'
" Plug 'peitalin/vim-jsx-typescript',  {'for': ['typescript', 'typescript.jsx']}
" " Plug 'herringtondarkholme/yats.vim', {'for': ['typescript', 'typescript.jsx']}
" " Plug 'quramy/tsuquyomi',             {'for': ['typescript', 'typescript.jsx']}

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

"" OtOtOther: Etc.
" Plug 'ericpruitt/tmux.vim', {'rtp': 'vim/'}
" Plug 'tmux-plugins/vim-tmux'
" Plug 'leonb/vim-nginx',           {'for': 'nginx'}
" Plug 'cakebaker/scss-syntax.vim', {'for': 'scss'}
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
