require'nvim-treesitter.configs'.setup {

    -- 安装 language parser
    -- :TSInstallInfo 命令查看支持的语言
    ensure_installed = {"python","html", "css", "vim", "lua","json","vimdoc"},
    -- 启用代码高亮功能
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    },
    -- 启用基于Treesitter的代码格式化(=) . NOTE: This is an experimental feature.
    indent = {
        enable = false
    },
    rainbow = {
        enable = true,
        -- list of languages you want to disable the plugin for
        disable = { 'jsx', 'cpp' },
        -- Which query to use for finding delimiters
        query = 'rainbow-parens',
        -- Highlight the entire buffer all at once
        strategy = require('ts-rainbow').strategy.global,
        hlgroups = {
            'TSRainbowCyan',
            'TSRainbowGreen',
            'TSRainbowYellow',
            'TSRainbowBlue',
            'TSRainbowViolet',
            --'TSRainbowRed',
            --'TSRainbowOrange',
        },
    },
}
-- 开启 Folding
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
-- 默认不要折叠
-- https://stackoverflow.com/questions/8316139/how-to-set-the-default-to-unfolded-when-you-open-a-file
vim.wo.foldlevel = 99
