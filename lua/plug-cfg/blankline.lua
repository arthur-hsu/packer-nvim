vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#98C379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#56B6C2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#61AFEF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#C678DD gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#E06C75 gui=nocombine]]



vim.opt.list = true
--vim.cmd [[highlight IndentBlanklineIndent1 guifg=#f15025 gui=nocombine]]
--vim.cmd [[highlight IndentBlanklineIndent2 guifg=#faeab6 gui=nocombine]]
--vim.cmd [[highlight IndentBlanklineIndent3 guifg=#00ced1 gui=nocombine]]
--vim.cmd [[highlight IndentBlanklineIndent4 guifg=#ff80ed gui=nocombine]]
--vim.cmd [[highlight IndentBlanklineIndent5 guifg=#ff6e4a gui=nocombine]]
--vim.cmd [[highlight IndentBlanklineIndent6 guifg=#00ff00 gui=nocombine]]

require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
    },
}
