# dear neovim,

My editor setup. Plugin management is handled by [vim-plug](http://github.com/junegunn/vim-plug).

## step one

```bash
git clone http://github.com/killtheliterate/dotnvim.git ~/.config/nvim
```

## step two

`$ nvim +PlugInstall +UpdateRemotePlugins +qa`

## step colors

Uses [base16-shell](https://github.com/chriskempson/base16-shell). Check out
the base16-shell repo to add the appropriate stuff to your 
`.bashrc/.zshrc/.whateverrc`

## step plugins

* [ale](https://github.com/w0rp/ale)
* [auto-pairs](http://github.com/jiangmiao/auto-pairs)
* [deoplete](http://github.com/sjl/shougo/deoplete.nvim)
* [diminactive](https://github.com/blueyed/vim-diminactive)
* [dirvish](https://github.com/justinmk/vim-dirvish)
* [editorconfig](http://github.com/editorconfig/editorconfig-vim)
* [eunuch](http://github.com/tpope/vim-eunuch)
* [fugitive](http://github.com/tpope/vim-fugitive)
* [fzf](http://github.com/junegunn/fzf.vim)
* [git](http://github.com/tpope/vim-git)
* [lightline](http://github.com/itchyny/lightline.vim)
* [move](http://github.com/matze/vim-move)
* [numbers](http://github.com/myusuf3/numbers.vim)
* [poppy](http://github.com/bounceme/poppy.vim)
* [rainbow_csv](https://github.com/mechatroner/rainbow_csv)
* [repeat](http://github.com/tpope/vim-repeat)
* [signify](http://github.com/mhinz/vim-signify)
* [surround](http://github.com/tpope/vim-surround)
* [tComment](http://github.com/tomtom/tcomment_vim)
* [vim-easy-align](https://github.com/junegunn/vim-easy-align)
* [vitality](http://github.com/sjl/vitality.vim)
* Stuff for JavaScript
* Stuff for TypeScript
* Stuff for other stuff

## step yep

`:Plug` & `:PlugClean` & `:PlugUpdate` & `:UpdateRemotePlugins`
