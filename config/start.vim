"" Start
"" ---------------------------------------------------------------------------
"" Load plugins with vim-plug, that type of thing.

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" if empty(glob('~/.config/base16-shell'))
"   silent !git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
" endif

call plug#begin('$HOME/.config/nvim/.plugged')

function! DoRemote(arg)
    UpdateRemotePlugins
endfunction

" PlPlPlugin:
" Plug 'autozimu/LanguageClient-neovim', {'do': ':UpdateRemotePlugins'}
" Plug 'benekastah/neomake',      {'do': 'npm install -g standard'}
Plug 'bling/vim-bufferline'
Plug 'brooth/far.vim'
Plug 'ctrlpvim/ctrlp.vim'
" Plug 'daviesjamie/vim-base16-lightline'
Plug 'editorconfig/editorconfig-vim'
Plug 'ervandew/supertab'
Plug 'itchyny/lightline.vim'
Plug 'janko-m/vim-test'
" Plug 'JazzCore/ctrlp-cmatcher', {'do': './install.sh'}
Plug 'jceb/vim-orgmode'
Plug 'jiangmiao/auto-pairs'
" Plug 'kien/rainbow_parentheses.vim'
Plug 'luochen1990/rainbow'
Plug 'machakann/vim-highlightedyank'
Plug 'matze/vim-move'
Plug 'mhinz/vim-signify'
Plug 'mklabs/vim-json'
Plug 'myusuf3/numbers.vim'
Plug 'reedes/vim-pencil'
Plug 'rking/ag.vim'
Plug 'sjl/vitality.vim'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar' " @see http://bit.ly/2gyTOwp
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale', {'do': 'npm install -g standard'}

" I remember my first IDE:
" Plug 'honza/vim-snippets'
Plug 'othree/csscomplete.vim'
Plug 'roxma/nvim-cm-tern'           , {'do': 'npm install'}
Plug 'roxma/nvim-completion-manager', {'do': 'pip3 install --user neovim jedi mistune psutil setproctitle'}
Plug 'eagletmt/neco-ghc',             {'for': ['haskell', 'cabal'], 'do': 'stack install ghc-mod'}
" Plug 'Shougo/deoplete.nvim',          {'do': ['pip3 install --user neovim', function('DoRemote')]}
Plug 'Shougo/neco-vim',               {'for': 'vim'}
Plug 'sirver/ultisnips'
" Plug 'carlitux/deoplete-ternjs',      {'for': ['javascript', 'javascript.jsx'], 'do': 'npm install -g tern'}


" HhHhTML: kill me plox
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

" PuPuPurescript
Plug 'raichoo/purescript-vim', {'for': 'purescript'}
Plug 'FrigoEU/psc-ide-vim/',   {'for': 'purescript'}

" OtOtOther
Plug 'LeonB/vim-nginx',           {'for': 'nginx'}
Plug 'cakebaker/scss-syntax.vim', {'for': 'scss'}
Plug 'nono/vim-handlebars',       {'for': 'hbs'}
Plug 'plasticboy/vim-markdown',   {'for': 'markdown'}
Plug 'toyamarinyon/vim-swift',    {'for': 'swift'}

" OtOtOtherOtOtOther
Plug 'powerman/vim-plugin-AnsiEsc'

" TtTtTheme: PRETTY PRETTY PRETTY PRETTY PRETTY PRETTY
" Plug 'morhetz/gruvbox'
" @TODO: This needs to clone base16-shell, and then cat the shell helper stuff
" to .zshrc
Plug 'chriskempson/base16-vim', {'do': 'git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell'}

" Lolkay: Some fance-shmance
Plug 'ryanoasis/vim-devicons'

call plug#end()
