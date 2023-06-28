local lspkind = require('lspkind')
local cmp = require("cmp")
vim.g.completeopt = "menu,menuone,noselect"

cmp.setup({
    experimental = {
        ghost_text = true,
    },
    snippet = {
        expand = function(args)
            --vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        end,
    },
    sources = cmp.config.sources({
        { name = "path" },
        { name = "nvim_lsp", group_index = 1 },
        { name = 'buffer',group_index = 2 },
        { name = 'luasnip', group_index = 3 },
    }),
    window = {
        documentation = cmp.config.window.bordered()
    },
    mapping = require("keybindings").cmp(cmp),

    formatting = {
        expandable_indicator = true,
        --fields = {'menu', 'abbr', 'kind'},
        format = lspkind.cmp_format({
            with_text = true, -- do not show text alongside icons
            maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
            before = function (entry, vim_item)
                -- Source 显示提示来源
                vim_item.menu = "["..string.upper(entry.source.name).."]"
                return vim_item
            end
        })
      },
})




-- Use buffer source for `/`.
cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' },
    },
})
--Use cmdline & path source for ':'.
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' },
           },
        {
        { name = 'cmdline' },
    }),
})


local sign = function(opts)
  vim.fn.sign_define(opts.name, {
    texthl = opts.name,
    text = opts.text,
    numhl = ''
  })
end

sign({name = 'DiagnosticSignError', text = '✘'})
sign({name = 'DiagnosticSignWarn', text = '▲'})
sign({name = 'DiagnosticSignHint', text = '⚑'})
sign({name = 'DiagnosticSignInfo', text = 'ℹ️'})

vim.diagnostic.config({
  virtual_text = false
})

-- Show line diagnostics automatically in hover window
vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]




-- gray
--vim.api.nvim_set_hl(0, 'CmpItemAbbrDeprecated', { bg='NONE', strikethrough=true, fg='#808080' })
-- blue
--vim.api.nvim_set_hl(0, 'CmpItemAbbrMatch', { bg='NONE', fg='#569CD6' })
--vim.api.nvim_set_hl(0, 'CmpItemAbbrMatchFuzzy', { link='CmpIntemAbbrMatch' })
-- light blue
--vim.api.nvim_set_hl(0, 'CmpItemKindVariable', { bg='NONE', fg='#9CDCFE' })
--vim.api.nvim_set_hl(0, 'CmpItemKindInterface', { link='CmpItemKindVariable' })
--vim.api.nvim_set_hl(0, 'CmpItemKindText', { link='CmpItemKindVariable' })
-- pink
--vim.api.nvim_set_hl(0, 'CmpItemKindFunction', { bg='NONE', fg='#C586C0' })
--vim.api.nvim_set_hl(0, 'CmpItemKindMethod', { link='CmpItemKindFunction' })
-- front
--vim.api.nvim_set_hl(0, 'CmpItemKindKeyword', { bg='NONE', fg='#D4D4D4' })
--vim.api.nvim_set_hl(0, 'CmpItemKindProperty', { link='CmpItemKindKeyword' })
--vim.api.nvim_set_hl(0, 'CmpItemKindUnit', { link='CmpItemKindKeyword' })

