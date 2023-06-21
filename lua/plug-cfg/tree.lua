require("nvim-tree").setup { -- BEGIN_DEFAULT_OPTS
    hijack_cursor = true,
    sync_root_with_cwd = true,
    renderer = {
        symlink_destination = false,
        indent_markers = {
            enable = true,
        },
        icons = {
            show = {
                file = false,
                folder = true,
                folder_arrow = false,
                git = true,
                modified = true,
            },
            glyphs = {
                default = "",
                symlink = "",
                bookmark = "",
                modified = "",
                folder = {
                    arrow_closed = "",
                    arrow_open = "",
                    default = "",
                    open = "",
                empty = "",
                empty_open = "",
                symlink = "",
                symlink_open = "",
                },
            },
            git = {
                unstaged = "✗",
                staged = "✓",
                unmerged = "↔️",
                renamed = "➜",
                untracked = "★",
                deleted = "♻️",
                ignored = "◌",
            },
        },
    },
    diagnostics = {
        icons = {
            hint = "ℹ️",
            info = "⚑",
            warning = "▲",
            error = "✘",
        },
    },
    actions = {
        open_file = {
            quit_on_open = true,
        },
    },
}
