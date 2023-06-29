require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    -------------------------- color ---------------------------------------------
    use 'dunstontc/vim-vscode-theme'                    --dark_plus
    use 'nvimdev/zephyr-nvim'                           --zephyr
    -------------------------- plugins -------------------------------------------
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } -- syntax highlight
    use { 'HiPhish/nvim-ts-rainbow2' } -- Rainbow delimiters
    use { 'MDeiml/tree-sitter-markdown' } -- markdown
    use {'ray-x/lsp_signature.nvim'} -- signature
    use {"folke/noice.nvim",requires = "MunifTanjim/nui.nvim", "rcarriga/nvim-notify"} -- notice
    use {"MunifTanjim/nui.nvim"}
    --use {"rcarriga/nvim-notify"}
    use 'CRAG666/code_runner.nvim'

    use {'norcalli/nvim-colorizer.lua'} -- rgb color
    use {'nvim-tree/nvim-web-devicons'} -- icon
    -- statusline
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    --tabbar
    use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
    
    use "lukas-reineke/indent-blankline.nvim" -- indent
    
    use "windwp/nvim-autopairs" --autopairs
    
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use 'airblade/vim-gitgutter'                                -- git
    use 'scrooloose/nerdcommenter'                              -- 註解 \cc 取消註解 \cu
    use 'mg979/vim-visual-multi'                                -- 多重光標
    use 'fcpg/vim-osc52'                     -- <C-c>遠端複製到本地
    use 'mbbill/undotree'
    -------------------------- LSP -----------------------------------------------
    --LSP install
    use {"williamboman/mason.nvim"}
    use {"williamboman/mason-lspconfig.nvim"}
    use {"neovim/nvim-lspconfig"}
    --cmp
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
    use 'onsails/lspkind-nvim'
    --use("rafamadriz/friendly-snippets")
    --use("hrsh7th/cmp-nvim-lsp-signature-help")
end)


