return function()
    local treesitter = require('nvim-treesitter.configs')

    api.nmap('<f10>', ':TSHighlightCapturesUnderCursor<cr>')

    treesitter.setup {
        context_commentstring = {
            enable = true,
        },

        highlight = {
            enable = true,
        },

        indent = {
            enable = true,
        },

        textobjects = {
            select = {
                enable = true,
                lookahead = true,

                keymaps = {
                    ['ab'] = '@block.outer',
                    ['ib'] = '@block.inner',
                    ['af'] = '@function.outer',
                    ['if'] = '@function.inner',
                    ['ac'] = '@conditional.outer',
                    ['ic'] = '@conditional.inner',
                    ['aC'] = '@class.outer',
                    ['iC'] = '@class.inner',
                    ['al'] = '@loop.outer',
                    ['il'] = '@loop.inner',
                    ['aa'] = '@parameter.outer',
                    ['ia'] = '@paramter.inner',
                },
            },
        },
    }
end
