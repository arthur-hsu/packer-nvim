--branch (git branch)
--buffers (shows currently available buffers)
--diagnostics (diagnostics count from your preferred source)
--diff (git diff status)
--encoding (file encoding)
--fileformat (file format)
--filename
--filesize
--filetype
--hostname
--location (location in file in line:column format)
--mode (vim mode)
--progress (%progress in file)
--searchcount (number of search matches when hlsearch is active)
--selectioncount (number of selected characters or lines)
--tabs (shows currently available tabs)
--windows (shows currently available windows)

require('lualine').setup {
    options = {
        theme = 'nightfly',
    },
    sections = {
        lualine_a = {
            {
            'mode',
            icons_enabled = true, -- Enables the display of icons alongside the component.
            icon = nil,
            },
        },
        lualine_b = {
            { 
            'diff',
            colored = true, -- Displays a colored diff status if set to true
            diff_color = {
                -- Same color values as the general color option can be used here.
                added    = 'DiffAdd',    -- Changes the diff's added color
                modified = 'DiffChange', -- Changes the diff's modified color
                removed  = 'DiffDelete', -- Changes the diff's removed color you
                },
            symbols = {added = '+', modified = '~', removed = '-'}, -- Changes the symbols used by the diff.
            source = nil, -- A function that works as a data source for diff.
                          -- It must return a table as such:
                          --   { added = add_count, modified = modified_count, removed = removed_count }
                          -- or nil on failure. count <= 0 won't be displayed.
            },

            {
            'diagnostics',
            colored = true, -- Displays a colored diff status if set to true
            icons_enabled = false,
            sources = {'nvim_diagnostic'},
            },
            {'branch', icon = {'', color={fg='LightBlue'}}},
            --{'selectioncount'}
        },

        lualine_c = {
            {'filename',
            file_status = true,        -- Displays file status (readonly status, modified status)
            path = 3,
            shorting_target = 40,
            symbols = {
                modified = '[+]',      -- Text to show when the file is modified.
                readonly = '[-]',      -- Text to show when the file is non-modifiable or readonly.
                unnamed = '[No Name]', -- Text to show for unnamed buffers.
                newfile = '[New]',     -- Text to show for newly created file before first written
            }
            },
        },

        lualine_x = {
            {'encoding'},
            {'fileformat',icons_enabled = false},
            {'filetype',icons_enabled = false},
        },

        lualine_y = {'progress'},

        lualine_z = {'location'},
    }
}
