# coop.nvim

this is my neovim distrobution built off of kickstart.nvim.

---

# configuration

here are the places you would want to config for your own needs.

## treesitter

the config for treesitter is lua/plugins/nvim-treesitter.lua.

here you will be able to add the languages you use.

## lsp config

the config for LSPs is lua/plugins/lsp-config.lua.

here you will be able to add LSPs from mason.

[list of LSPs](https://github.com/williamboman/mason-lspconfig.nvim?tab=readme-ov-file#available-lsp-servers)

## debugging

the config for the dbugger is lua/plugins/debugging.lua.

here you will add your debuggers.

[Debug Adapter installation](https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation)

## augment code

i am useing agment code as an ai assistant, you can learn more here: [augment code](https://docs.augmentcode.com/using-augment/vim-neovim)

## comment.nvim

i added the ability to easily comment code with hitting / or * when in visual mode, you can change this in lua/plugins/comment.lua.
