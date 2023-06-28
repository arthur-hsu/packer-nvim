require("plugins")
require("keybindings")
--require("basic-cfg")
--  内置LSP
require("lsp.setup")
require("lsp.cmp")

--  plug-cfg
require("plug-cfg.nvim-treesitter")
require("plug-cfg.lsp_signature")
require("plug-cfg.noice")
require'colorizer'.setup()
require("plug-cfg.lualine")
require("plug-cfg.bufferline")
require("plug-cfg.blankline")
require("plug-cfg.tree")
require("plug-cfg.autopairs")
