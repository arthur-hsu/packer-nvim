require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use {"williamboman/mason.nvim"}
    use {"williamboman/mason-lspconfig.nvim"}
    use {"neovim/nvim-lspconfig"}
    -------------------------- plugins -------------------------------------------
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use { 'HiPhish/nvim-ts-rainbow2' }
    use {'ray-x/lsp_signature.nvim'}
    --------------------- LSP --------------------
    use("hrsh7th/nvim-cmp")
    -- for vsnip
    use("hrsh7th/vim-vsnip")
    use("hrsh7th/cmp-vsnip")

    -- for lua
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    use("hrsh7th/cmp-emoji")
    use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
    use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
    use("hrsh7th/cmp-path") -- { name = 'path' }
    use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }
    use("rafamadriz/friendly-snippets")
end)


