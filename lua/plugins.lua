require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -------------------------- plugins -------------------------------------------
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  --------------------- LSP --------------------
  -- use({ "williamboman/nvim-lsp-installer", commit = "36b44679f7cc73968dbb3b09246798a19f7c14e0" })
  use({ "williamboman/mason.nvim" })
  -- Lspconfig
  use({ "neovim/nvim-lspconfig" })
  -- 补全引擎
  use("hrsh7th/nvim-cmp")
  -- 补全源
  -- for vsnip
  use("hrsh7th/vim-vsnip")
  use("hrsh7th/cmp-vsnip")
  -- for snippy
  use("dcampos/nvim-snippy")
  use("dcampos/cmp-snippy")

  use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
  use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
  use("hrsh7th/cmp-path") -- { name = 'path' }
  use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }
  use("hrsh7th/cmp-nvim-lsp-signature-help") -- { name = 'nvim_lsp_signature_help' }
  use("hrsh7th/cmp-emoji")
    -- 常见编程语言代码段
  use("rafamadriz/friendly-snippets")
  -- UI 增强
  use("onsails/lspkind-nvim")
  use("tami5/lspsaga.nvim")
  -- 代码格式化
  use("mhartington/formatter.nvim")
  use({ "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" })
  -- TypeScript 增强
  use({ "jose-elias-alvarez/nvim-lsp-ts-utils", requires = "nvim-lua/plenary.nvim" })
  -- Lua 增强
  use("folke/lua-dev.nvim")
  -- JSON 增强
  use("b0o/schemastore.nvim")
  -- Rust 增强
  use("simrat39/rust-tools.nvim")
end)


