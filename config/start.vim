"" Start
"" ---------------------------------------------------------------------------
"" Load plugins with vim-plug, that type of thing.

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
Plug 'itchyny/lightline.vim'
Plug 'jaxbot/semantic-highlight.vim'
Plug 'jceb/vim-orgmode'
" Plug 'jeetsukumaran/vim-filebeagle'
Plug 'jiangmiao/auto-pairs'
Plug 'kien/ctrlp.vim'
Plug 'matze/vim-move'
Plug 'mhinz/vim-signify'
" Plug 'mhinz/vim-startify'
Plug 'myusuf3/numbers.vim'
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'reedes/vim-pencil'
Plug 'rking/ag.vim'
Plug 'sjl/vitality.vim'
Plug 'tomtom/tcomment_vim'
" Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar' " @see http://bit.ly/2gyTOwp

" HhHhTML: kill me plox
Plug 'Valloric/MatchTagAlways', {'for': ['html', 'tpl']}
Plug 'gcmt/breeze.vim',         {'for': ['html', 'tpl']}
Plug 'tpope/vim-liquid',        {'for': ['html', 'tpl']}

" Elixir: okay, cool
Plug 'elixir-lang/vim-elixir',  {'for': 'elixir'}
Plug 'slashmili/alchemist.vim', {'for': 'elixir'}

" JjJjavactipt: what is javascript?
Plug 'carlitux/deoplete-ternjs', {'for': ['javascript', 'javascript.jsx']}
Plug 'mxw/vim-jsx',              {'for': ['javascript', 'javascript.jsx']}
" Plug 'pangloss/vim-javascript',  {'for': ['javascript', 'javascript.jsx']}
Plug 'othree/yajs.vim',          {'for': ['javascript', 'javascript.jsx']}
Plug 'ternjs/tern_for_vim',      {'do': 'npm install'}

" HhHhaskell: laws only
Plug 'neovimhaskell/haskell-vim', {'for': 'haskell'}
Plug 'eagletmt/neco-ghc',         {'for': 'haskell', 'do': 'stack install ghc-mod'}

" ScScScala: It's like JavaScript, but still bad
Plug 'ensime/ensime-vim',         {'for': 'scala'}
Plug 'derekwyatt/vim-scala',      {'for': 'scala'}

" OtOtOther
Plug 'LeonB/vim-nginx'
Plug 'cakebaker/scss-syntax.vim', {'for': 'scss'}
Plug 'elm.vim',                   {'for': '.elm'}
Plug 'nono/vim-handlebars',       {'for': 'hbs'}
Plug 'plasticboy/vim-markdown',   {'for': 'markdown'}
Plug 'raichoo/purescript-vim',    {'for': 'psc'}
Plug 'toyamarinyon/vim-swift',    {'for': 'swift'}

" TtTtTheme: PRETTY PRETTY PRETTY PRETTY PRETTY PRETTY
Plug 'morhetz/gruvbox'

call plug#end()
