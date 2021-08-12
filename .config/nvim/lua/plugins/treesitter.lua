local api = require('api')
local treesitter = require('nvim-treesitter.configs')

api.map.normal('<f10>', ':TSHighlightCapturesUnderCursor<cr>')

treesitter.setup {
    highlight = { enable = true },
    indent = { enable = true },
}
