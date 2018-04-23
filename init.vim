"" Hi, how are you?
"" ---------------------------------------------------------------------------
"" ❤ ☠ ⚒ ☞ ☛ ☚ ☜ » « ☹ → ← ⚔
"" http://xkcd.com/1172

source $HOME/.config/nvim/config/start.vim

"" the things
"" ---------------------------------------------------------------------------

source $HOME/.config/nvim/config/color.vim
source $HOME/.config/nvim/config/general.vim
source $HOME/.config/nvim/config/highlight.vim
source $HOME/.config/nvim/config/moretypes.vim
source $HOME/.config/nvim/config/reveal.vim

"" plugin configuration
"" ---------------------------------------------------------------------------

source $HOME/.config/nvim/config/plugin-config/ale.vim
source $HOME/.config/nvim/config/plugin-config/ctrlp.vim
" source $HOME/.config/nvim/config/plugin-config/far.vim
" source $HOME/.config/nvim/config/plugin-config/fzf.vim
source $HOME/.config/nvim/config/plugin-config/lightline.vim
" source $HOME/.config/nvim/config/plugin-config/markdown.vim
" source $HOME/.config/nvim/config/plugin-config/ncm.vim
" source $HOME/.config/nvim/config/plugin-config/ultisnips.vim
" source $HOME/.config/nvim/config/plugin-config/vim-jsx.vim
source $HOME/.config/nvim/config/plugin-config/vim-move.vim
source $HOME/.config/nvim/config/plugin-config/poppy.vim
" source $HOME/.config/nvim/config/plugin-config/vim-tsx.vim
source $HOME/.config/nvim/config/plugin-config/dirvish.vim
" source $HOME/.config/nvim/config/plugin-config/rainbow.vim

"" other stuff
"" ---------------------------------------------------------------------------

" source $HOME/.config/nvim/config/plugin-config/language-client.vim

"" ---------------------------------------------------------------------------

" @see: https://github.com/w0rp/ale#generating-vim-help-files
packloadall
silent! helptags ALL
