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

        mapping = {
            ['<tab>'] = function(fallback)
                if vim.fn.pumvisible() == 1 then
                    vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<c-n>', true, true, true), 'n')
                else
                    fallback()
                end
            end,

            ['<s-tab>'] = function(fallback)
                if vim.fn.pumvisible() == 1 then
                    vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<c-p>', true, true, true), 'n')
                else
                    fallback()
                end
            end,

            ['<c-n>'] = cmp.mapping.select_next_item(),
            ['<c-p>'] = cmp.mapping.select_prev_item(),
            ['<c-d>'] = cmp.mapping.scroll_docs(-4),
            ['<c-f>'] = cmp.mapping.scroll_docs(4),
            ['<c-e>'] = cmp.mapping.close(),
            ['<c-space>'] = cmp.mapping.complete(),
        },
    })
end
