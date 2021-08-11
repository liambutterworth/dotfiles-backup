local api = require('api')
local nnn = require('nnn')

nnn.setup({
    command = 'n',
    set_default_mappings = 0,
    replace_netrw = 1,

    action = {
        ['<c-s>'] = 'split',
        ['<c-v>'] = 'vsplit',
        ['<c-t>'] = 'tab',
    },

    layout = {
        window = {
            height = 0.8,
            width = 0.8,
            border = 'sharp',
        }
    },
})

api.map.normal('<cr><cr>', ':NnnPicker<cr>', {
    noremap = true,
    silent = true,
})

api.map.normal('<cr>f', ':NnnPicker %:p:h<cr>', {
    noremap = true,
    silent = true,
})
