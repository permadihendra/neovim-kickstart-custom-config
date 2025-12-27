# neovim-config
Just repo for neovim

## Step-1 Install Neovim
Consult for your OS:
* macos via Homebrew or Macports (recommend)
* Linux via APT or sources

## Step-2 Install Neovim Kickstart Custom Config
My modified kickstart config that meets my need. To install it do this:
### For Linux and Mac
```
git clone https://github.com/permadihendra/neovim-kickstart-custom-config.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
nvim
```
This will automatically installed all the plugins

## For installing if not working
```sh
# Go to Lazy Menu
:Lazy

# Sync
'<shift>'S 

# Update
'<shift>'U
```

## PLugins Ready to Use
* neo-tree : directory tree-list on the side
* barbar : window bar for opened file/buffer
* lsp-python : Ruff and basedpyright
* toggleterm : Toggle/open terminal 
* conform : formatter

