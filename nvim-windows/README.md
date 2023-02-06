# 1 Nvchad windows

[doc](https://nvchad.com/quickstart/install)

> If you are on Windows 10, you need developer mode enabled in order to use local plugins (creating symbolic links requires admin privileges on Windows - credit to @TimUntersberger for this note)

```sh
# install in windows AS ADMIN
git clone https://github.com/NvChad/NvChad <$HOME>\AppData\Local\nvim --depth 1 && nvim

# unintall in windows
rd -r ~\AppData\Local\nvim
rd -r ~\AppData\Local\nvim-data
```

## In Neovim
- Update NvChad by pressing `<leader> + uu`

> Note: by NvChad default, `<leader>` is the `<space>` key.

# 2 Configure files

- copy `ginit.vim` to `c:\Users\<username>\AppData\Local\nvim\`
- copy `lua/custom` to `c:\User\<username>\AppData\Local\nvim\lua\`
- run `PackerSync`