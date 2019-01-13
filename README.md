# dear neovim,

My editor setup. Plugin management is handled by [vim-plug](http://github.com/junegunn/vim-plug).

## step one

```bash
git clone http://github.com/killtheliterate/dotnvim.git ~/.config/nvim
```

## step two

Start neovim, and run `:PlugInstall`

## step colors

Uses [base16-shell](https://github.com/chriskempson/base16-shell). Check out
the base16-shell repo to add the appropriate stuff to your 
`.bashrc/.zshrc/.whateverrc`

## step plugins

* [Ale](https://github.com/w0rp/ale)
* [Auto Pairs](http://github.com/jiangmiao/auto-pairs)
* [CtrlP](http://github.com/kien/ctrlp.vim)
* [Dirvish](https://github.com/justinmk/vim-dirvish)
* [EditorConfig](http://github.com/editorconfig/editorconfig-vim)
* [Eunuch](http://github.com/tpope/vim-eunuch)
* [Floobits](https://github.com/floobits/floobits-neovim)
* [Fugitive](http://github.com/tpope/vim-fugitive)
* [Git](http://github.com/tpope/vim-git)
* [Lightline](http://github.com/itchyny/lightline.vim)
* [Move](http://github.com/matze/vim-move)
* [Numbers](http://github.com/myusuf3/numbers.vim)
* [Poppy](http://github.com/bounceme/poppy.vim)
* [Rainbow CSV](https://github.com/mechatroner/rainbow_csv)
* [Repeat](http://github.com/tpope/vim-repeat)
* [Signify](http://github.com/mhinz/vim-signify)
* [Surround](http://github.com/tpope/vim-surround)
* [vim-easy-align](https://github.com/junegunn/vim-easy-align)
* [Vitality](http://github.com/sjl/vitality.vim)
* [YouCompleteMe](http://github.com/valloric/youcompleteme)
* [tComment](http://github.com/tomtom/tcomment_vim)
* Stuff for JavaScript
* Stuff for TypeScript

## step yep

`$ nvim +PlugInstall +UpdateRemotePlugins +qa`
