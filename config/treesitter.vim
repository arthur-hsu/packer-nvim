lua << EOF
require("nvim-treesitter.configs").setup({
    ensure_installed = { "javascript", "python", "vimdoc", "vim", "json"},
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
    },
})
EOF
