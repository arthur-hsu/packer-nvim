-- https://github.com/neovim/nvim-lspconfig/wiki/Autocompletion
-- https://github.com/hrsh7th/nvim-cmp
-- https://github.com/onsails/lspkind-nvim

local lspkind = require("lspkind")
local cmp = require("cmp")
vim.g.completeopt = "menu,menuone,noselect,noinsert"
cmp.setup({
  -- 指定 snippet 引擎
  experimental = {
        ghost_text = true,
    },

  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "nvim_lsp_signature_help" },
    { name = "emoji"},
    { name = "path" },
  }),
  -- 使用lspkind-nvim显示类型图标
  formatting = require("lsp.ui").formatting,
  mapping = require("keybindings").cmp(cmp),
})

-- Use buffer source for `/`.
cmp.setup.cmdline("/", {
  sources = {
    { name = "buffer" },
  },
})

-- Use cmdline & path source for ':'.
cmp.setup.cmdline(":", {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = "path" },
  }, {
    { name = "cmdline" },
  }),
})
