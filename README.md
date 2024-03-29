# PS - `lua` based configuration

I'm just using this configuration now -> https://github.com/killtheliterate/dotluavim

# dear neovim,

My editor setup. Plugin management is handled by [vim-plug](http://github.com/junegunn/vim-plug).

## step one

```bash
git clone http://github.com/killtheliterate/dotnvim.git ~/.config/nvim
```

## step two

`$ nvim +PlugInstall +UpdateRemotePlugins +qa`

## step colors

Uses [chriskempson/base16-shell](https://github.com/chriskempson/base16-shell). Check out
the base16-shell repo to add the appropriate stuff to your 
`.bashrc/.zshrc/.whateverrc`

## step plugins

* [blueyed/vim-diminactive](https://github.com/blueyed/vim-diminactive)
* [bounceme/poppy.vim](http://github.com/bounceme/poppy.vim)
* [ciaranm/securemodelines](https://github.com/ciaranm/securemodelines)
* [editorconfig/editorconfig-vim](http://github.com/editorconfig/editorconfig-vim)
* [itchyny/lightline.vim](http://github.com/itchyny/lightline.vim)
* [jiangmiao/auto-pairs](http://github.com/jiangmiao/auto-pairs)
* [junegunn/fzf](http://github.com/junegunn/fzf.vim)
* [junegunn/vim-easy-align](https://github.com/junegunn/vim-easy-align)
* [justinmk/vim-dirvish](https://github.com/justinmk/vim-dirvish)
* [kristijanhusak/vim-dirvish-git](https://github.com/kristijanhusak/vim-dirvish-git)
* [matze/vim-move](http://github.com/matze/vim-move)
* [mechatroner/rainbow_csv](https://github.com/mechatroner/rainbow_csv)
* [mhinz/vim-signify](http://github.com/mhinz/vim-signify)
* [myusuf3/numbers.vim](http://github.com/myusuf3/numbers.vim)
* [neoclide/coc.nvim](https://github.com/neoclide/coc.nvim)
* [sheerun/vim-polyglot](https://github.com/sheerun/vim-polyglot)
* [sjl/vitality.vim](http://github.com/sjl/vitality.vim)
* [tomtom/tcomment_vim](http://github.com/tomtom/tcomment_vim)
* [tpope/vim-eunuch](http://github.com/tpope/vim-eunuch)
* [tpope/vim-fugitive](http://github.com/tpope/vim-fugitive)
* [tpope/vim-repeat](http://github.com/tpope/vim-repeat)
* [tpope/vim-surround](http://github.com/tpope/vim-surround)
* etc

## step [Coc](https://github.com/neoclide/coc.nvim)

[list of coc extensions](https://github.com/killtheliterate/dotnvim/blob/master/config/plugin-config/coc.vim#L1)

`:CocInstall coc-css coc-eslint coc-json coc-lists coc-pyright coc-sql coc-stylelintplus coc-tsserver coc-vimlsp coc-yaml`

## step yep

`:Plug` & `:PlugClean` & `:PlugUpdate` & `:UpdateRemotePlugins`
