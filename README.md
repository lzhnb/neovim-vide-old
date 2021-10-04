# nvim-vide(Developing)

learning operations please refer to [vim-vide](https://github.com/lzhnb/vim-vide)

## Installation
```
git clone --recursive -d 1 https://github.com/lzhnb/neovim-vide ~/.config/nvim
```
- Note:
We do not use any plug managers like `vim-plug/packer.nvim`, we manage the plugins by `git submodule`.
While you have added the submodules, and the submodules are all in `pack`. Then, you should build a link:
```sh
cd ~/.local/share/nvim/site
ln -s $HOME/.config/nvim/pack .
```
> NOTE: the given `ln` path must be the absolute path.

## Coc
Our installed coc list:
```sh
coc-git
coc-highlight
coc-snippets
coc-json
coc-explorer
coc-pyright
```

## Python Setting
Using `coc-pyright` to realize completion, and using `jedi-vim` to realize **go-to**.
We disable the autocompletion of `jedi-vim`.
- `<leader>d`: go to definition
- `K`: check documentation of class or method
- `<leader>n`: show the usage of a name in current file
- `<leader>r`: rename a name

TODO

