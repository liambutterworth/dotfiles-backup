return function()
    local cmp = require('cmp')

    vim.api.nvim_set_keymap('n', '[k', '<cmd>lua require("cmp").setup { enabled = false }<cr>', {})
    vim.api.nvim_set_keymap('n', ']k', '<cmd>lua require("cmp").setup { enabled = true }<cr>', {})

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
            ['<CR>'] = cmp.mapping.confirm({ select = true }),
            ['<C-n>'] = cmp.mapping.scroll_docs(-4),
            ['<C-p>'] = cmp.mapping.scroll_docs(4),
            ['<C-h>'] = cmp.mapping.close(),
            ['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' }),
            ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
        },
    })
end
