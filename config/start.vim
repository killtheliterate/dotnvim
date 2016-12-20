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
Plug 'ervandew/supertab'
Plug 'floobits/floobits-neovim'
Plug 'itchyny/lightline.vim'
Plug 'janko-m/vim-test'
Plug 'jceb/vim-orgmode'
Plug 'jiangmiao/auto-pairs'
Plug 'kien/ctrlp.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'matze/vim-move'
Plug 'mhinz/vim-signify'
Plug 'myusuf3/numbers.vim'
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'reedes/vim-pencil'
Plug 'rking/ag.vim'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar' " @see http://bit.ly/2gyTOwp

" Plug 'brooth/far.vim'
" Plug 'jaxbot/semantic-highlight.vim'
" Plug 'jeetsukumaran/vim-filebeagle'
" Plug 'mhinz/vim-startify'
" Plug 'sjl/vitality.vim'
" Plug 'tpope/vim-commentary'
" Plug 'tpope/vim-unimpaired'
" Plug 'vim-airline/vim-airline'

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
Plug 'pangloss/vim-javascript',  {'for': ['javascript', 'javascript.jsx']}
Plug 'ternjs/tern_for_vim',      {'do': 'npm install'}

" HhHhaskell: laws only
Plug 'eagletmt/neco-ghc',         {'for': ['haskell', 'cabal'], 'do': 'stack install ghc-mod'}
Plug 'neovimhaskell/haskell-vim', {'for': ['haskell', 'cabal']}
Plug 'parsonsmatt/intero-neovim', {'for': ['haskell', 'cabal']}

" ScScScala: It's like JavaScript, but still bad
Plug 'ensime/ensime-vim',         {'for': 'scala'}
Plug 'derekwyatt/vim-scala',      {'for': 'scala'}

" OtOtOther
Plug 'LeonB/vim-nginx'
Plug 'Shougo/neco-vim',           {'for': 'vim'}
Plug 'cakebaker/scss-syntax.vim', {'for': 'scss'}
Plug 'elm.vim',                   {'for': '.elm'}
Plug 'nono/vim-handlebars',       {'for': 'hbs'}
Plug 'plasticboy/vim-markdown',   {'for': 'markdown'}
Plug 'raichoo/purescript-vim',    {'for': 'psc'}
Plug 'toyamarinyon/vim-swift',    {'for': 'swift'}

" TtTtTheme: PRETTY PRETTY PRETTY PRETTY PRETTY PRETTY
Plug 'morhetz/gruvbox'

call plug#end()
