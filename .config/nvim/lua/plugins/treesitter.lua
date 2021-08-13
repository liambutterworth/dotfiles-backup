local api = require('api')
local treesitter = require('nvim-treesitter.configs')

api.map.normal('<f10>', ':TSHighlightCapturesUnderCursor<cr>')

treesitter.setup {
    highlight = { enable = true },
    indent = { enable = true },

    textobjects = {
        select = {
            enable = true,
            lookahead = true,

            keymaps = {
                ['af'] = '@function.outer',
                ['if'] = '@function.inner',
                ['ac'] = '@class.outer',
                ['ic'] = '@class.inner',
            },
        },
    },
}
