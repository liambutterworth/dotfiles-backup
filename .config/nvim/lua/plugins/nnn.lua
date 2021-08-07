local api = require('api')

api.global['nnn#command'] = 'n'
api.global['nnn#replace_netrw'] = 1
api.global['nnn$set_default_mappings'] = 0

api.global['nnn#layout'] = {
    window = {
        height = 0.8,
        width = 0.8,
        border = 'sharp',
    }
}

api.global['nnn#action'] = {
    ['<c-s>'] = 'split',
    ['<c-v>'] = 'vsplit',
    ['<c-t>'] = 'tab',
}

api.map.normal('<cr><cr>', ':NnnPicker<cr>', {
    noremap = true,
    silent = true,
})

api.map.normal('<cr>f', ':NnnPicker %:p:h<cr>', {
    noremap = true,
    silent = true,
})
