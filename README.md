# coop.nvim

this is my neovim configuration.

if you want to know how i made this config, i used typecraft's neovim for newbs playlist.

[Neovim for newbs](https://www.youtube.com/playlist?list=PLsz00TDipIffreIaUNk64KxTIkQaGguqn)

---

# configuration

here are the places you would want to config for your own needs.

## treesitter

the config for treesitter is lua/plugins/treesitter.lua

here you will be able to add the languages you use.

## lsp config

the config for LSPs is lua/plugins/lspconfig.lua

here you will be able to add LSPs from mason.

[list of LSPs](https://github.com/williamboman/mason-lspconfig.nvim?tab=readme-ov-file#available-lsp-servers)

---

# key maps

this is all if the key commands you can use.

## Telescope

leader ff : find files
leader fg : live grep

## Neo tree

leader ee : open file tree

## lsp config

leader k : hover
leader gd : go to definition
leader ca : code action
