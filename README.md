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

## debugging

the config for the dbugger is lua/plugins/debugging.lua

here you will add your debuggers.

[Debug Adapter installation](https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation)

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

## none-ls

leader gf : format code

## debugger

leader dt : toggle breatpoint

leader dc : continue (starts debugger)

## git stuff

leader ph : preview hunk

leader lb : current line blame

leader gb : git blame

## trouble

leader xx : toggle diagnostics

leader xX : toggle diagnostics for buffer
