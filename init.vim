"" Hi, how are you?
"" ---------------------------------------------------------------------------
"" ❤ ☠ ⚒ ☞ ☛ ☚ ☜ » « ☹ → ← ⚔
"" http://xkcd.com/1172

" let $NVIM_COC_LOG_LEVEL = 'debug'
" let g:coc_node_args = ['--nolazy', '--inspect-brk=6045']
" let g:node_client_debug = 1

" @see: https://blog.claude.nl/tech/howto/Setup-Neovim-as-Python-IDE-with-virtualenvs/
let g:python3_host_prog="~/venvs/neovim/bin/python"
let g:loaded_perl_provider = 0

source $HOME/.config/nvim/config/plugins.vim

"" the things
"" ---------------------------------------------------------------------------

source $HOME/.config/nvim/config/color.vim
source $HOME/.config/nvim/config/general.vim
source $HOME/.config/nvim/config/highlight.vim
source $HOME/.config/nvim/config/reveal.vim
source $HOME/.config/nvim/config/tabs.vim

"" plugin configuration
"" ---------------------------------------------------------------------------

" source $HOME/.config/nvim/config/plugin-config/polyglot.vim
" source $HOME/.config/nvim/config/plugin-config/poppy.vim
" source $HOME/.config/nvim/config/plugin-config/vim-move.vim
" source $HOME/.config/nvim/config/plugin-config/base16-lua.vim
source $HOME/.config/nvim/config/plugin-config/coc-fzf.vim
source $HOME/.config/nvim/config/plugin-config/coc.vim
source $HOME/.config/nvim/config/plugin-config/ctags.vim
source $HOME/.config/nvim/config/plugin-config/dirvish.vim
source $HOME/.config/nvim/config/plugin-config/easy-align.vim
source $HOME/.config/nvim/config/plugin-config/fzf.vim
source $HOME/.config/nvim/config/plugin-config/lightline.vim
source $HOME/.config/nvim/config/plugin-config/tree-sitter.vim

"" ---------------------------------------------------------------------------

" @see: https://github.com/w0rp/ale#generating-vim-help-files
packloadall
silent! helptags ALL
