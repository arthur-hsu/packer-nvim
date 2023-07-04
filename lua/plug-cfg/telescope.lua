local builtin = require('telescope.builtin')
local undo = require("telescope-undo.actions")
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set("n", "<F7>", "<cmd>Telescope undo<cr>")


require("telescope").load_extension("undo")
require("telescope").setup({
    extensions = {
        undo = {
            use_delta = true,
            use_custom_command = nil, -- setting this implies `use_delta = false`. Accepted format is: { "bash", "-c", "echo '$DIFF' | delta" }
            diff_context_lines = vim.o.scrolloff,
            entry_format = "state #$ID, $STAT, $TIME",
            time_format = "",
            side_by_side = true,
            layout_strategy = "vertical",
            layout_config = {
                preview_height = 0.8,
            },
            mappings = {
                i = {
                    ["<C-cr>"] = require("telescope-undo.actions").yank_additions,
                    ["<S-cr>"] = require("telescope-undo.actions").yank_deletions,
                    ["<cr>"] = require("telescope-undo.actions").restore,
                },
                n = {
                    ["y"] = require("telescope-undo.actions").yank_additions,
                    ["Y"] = require("telescope-undo.actions").yank_deletions,
                    ["<leader>u"] = require("telescope-undo.actions").restore,
                },
            },
        },
    },
})
