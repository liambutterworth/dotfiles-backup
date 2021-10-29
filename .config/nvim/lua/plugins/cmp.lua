return function()
    local cmp = require('cmp')

    cmp.setup({
        sources = {
            { name = 'buffer' },
            { name = 'nvim_lsp' },
            { name = 'nvim_lua' },
            { name = 'path' },
            { name = 'vsnip' },
        },

        snippet = {
            expand = function(args)
                vim.fn["vsnip#anonymous"](args.body)
            end,
        },

        mapping = {
            ['<cr>'] = cmp.mapping.confirm({ select = true }),
            ['<tab>'] = cmp.mapping.select_next_item(),
            ['<s-tab>'] = cmp.mapping.select_prev_item(),
            ['<c-n>'] = cmp.mapping.scroll_docs(-4),
            ['<c-p>'] = cmp.mapping.scroll_docs(4),
            ['<c-h>'] = cmp.mapping.close(),
        },
    })
end
