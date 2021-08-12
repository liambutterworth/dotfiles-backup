local api = require('api')
local treesitter = require('nvim-treesitter')

api.map.normal('<f10>', ':TSHighlightCapturesUnderCursor<cr>')

treesitter.setup {
    context_commentstring = { enable = true },
    highlight = { enable = true },
    indent = { enable = true },
}
