require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    -------------------------- plugins -------------------------------------------
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use {'ray-x/lsp_signature.nvim'}
    --------------------- LSP --------------------
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
    
    -- for lua
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    use("hrsh7th/cmp-emoji")
    use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
    use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
    use("hrsh7th/cmp-path") -- { name = 'path' }
    use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }
    use("hrsh7th/cmp-nvim-lsp-signature-help") -- { name = 'nvim_lsp_signature_help' }
    -- 常见编程语言代码段
    use("rafamadriz/friendly-snippets")
    -- UI 增强
    -- Lua 增强
    use("folke/lua-dev.nvim")
end)


