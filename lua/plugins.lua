-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})



require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    -------------------------- color ---------------------------------------------
    use 'dunstontc/vim-vscode-theme'                    --dark_plus
    use 'nvimdev/zephyr-nvim'                           --zephyr
    -------------------------- plugins -------------------------------------------
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        requires = { {'nvim-lua/plenary.nvim'}, {"debugloop/telescope-undo.nvim"}}
    }
    use 'dstein64/vim-startuptime'
    use ("nathom/filetype.nvim")
    use "sindrets/diffview.nvim"
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
        requires = {'nvim-tree/nvim-web-devicons'},
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use 'airblade/vim-gitgutter'                                -- git
    use 'scrooloose/nerdcommenter'                              -- 註解 \cc 取消註解 \cu
    use 'mg979/vim-visual-multi'                                -- 多重光標
    use {'ojroques/nvim-osc52'}                                 -- ssh複製
    use { 'm00qek/baleia.nvim', tag = 'v1.3.0' }                -- for ANSI decode
    use {
        'goolord/alpha-nvim',
        config = function ()
            require'alpha'.setup(require'alpha.themes.startify'.config)
        end
    }
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

