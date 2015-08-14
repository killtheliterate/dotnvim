##  
This is how I deal with my editor setup. My nvimrc is meant to be symlinked
from my home directory, an obvious step of which is appending a dot to the
symlink name. Plugin management is handled by
[NeoBundle](https://github.com/Shougo/neobundle.vim).

### step one

```
curl https://gist.githubusercontent.com/killtheliterate/f33dbd455f86b4d093e9/raw/e68a439b1c811c9e4783de68ab6421b7b9ad0a12/install.sh | sh
pip install neovim
```

## step two

```
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
```

### step plugins

* [Ag](https://github.com/rking/ag.vim)
* [Airline](http://github.com/bling/vim-airline)
* [Auto Pairs](http://github.com/jiangmiao/auto-pairs)
* [Breeze](https://github.com/gcmt/breeze.vim)
* [Bufferline](http://github.com/bling/vim-bufferline)
* [Commentary](http://github.com/tpope/vim-commentary)
* [CtrlP](https://github.com/kien/ctrlp.vim)
* [EditorConfig](https://github.com/editorconfig/editorconfig-vim)
* [Eunuch](http://github.com/tpope/vim-eunuch)
* [Fugitive](http://github.com/tpope/vim-fugitive)
* [Git](http://github.com/tpope/vim-git)
* [MatchTagAlways](https://github.com/Valloric/MatchTagAlways)
* [Move](http://github.com/matze/vim-move)
* [NeoMake](https://github.com/benekastah/neomake)
* [Numbers](http://github.com/myusuf3/numbers.vim)
* [Pencil](https://github.com/reedes/vim-pencil)
* [Rainbow Parentheses](http://github.com/kien/rainbow_parentheses.vim)
* [Repeat](http://github.com/tpope/vim-repeat)
* [Reveal In Finder](https://github.com/henrik/vim-reveal-in-finder)
* [Sensible](http://github.com/tpope/vim-sensible)
* [Signify](http://github.com/mhinz/vim-signify)
* [Startify](https://github.com/mhinz/vim-startify)
* [Surround](http://github.com/tpope/vim-surround)
* [Unimpaired](http://github.com/tpope/vim-unimpaired)
* [Vinegar](http://github.com/tpope/vim-vinegar)
* [Vitality](http://github.com/sjl/vitality.vim)
* Misc syntaxes and stuff

## Notes
* To install the included plugins, run `:NeoBundleInstall`
* Set Iterm2 to report itself as xterm-256color.
