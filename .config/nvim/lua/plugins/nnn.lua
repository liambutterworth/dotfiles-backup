local set = require('utils.set')
local map = require('utils.map')

set.global('nnn#command', 'n')
set.global('nnn#replace_netrw', 1)
set.global('nnn#set_default_mappings', 0)

set.global('nnn#layout', {
    window = {
        height = 0.8,
        width = 0.8,
        border = 'sharp',
    }
})

set.global('nnn#action', {
    ['<c-s>'] = 'split',
    ['<c-v>'] = 'vsplit',
    ['<c-t>'] = 'tab',
})

map.normal('<cr><cr>', ':NnnPicker<cr>', {
    noremap = true,
    silent = true,
})

map.normal('<cr>f', ':NnnPicker %:p:h<cr>', {
    noremap = true,
    silent = true,
})
