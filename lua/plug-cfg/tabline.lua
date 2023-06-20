require('tabline').setup {
    enable = true,
    options = {
        show_devicons = false,
    },
    vim.cmd[[
        set showtabline=2
        set guioptions-=e " Use showtabline in gui vim
        set sessionoptions+=tabpages,globals " store tabpages and globals in session
    ]]
}
