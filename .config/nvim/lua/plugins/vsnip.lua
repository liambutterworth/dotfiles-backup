local api = require('api')

api.global.vsnip_snippet_dir = api.call.expand('~/.config/nvim/snippets')

api.map.insert('<c-j>', "vsnip#available(1) ? '<plug>(vsnip-expand-or-jump)' : '<c-j>'", { expr = true })
api.map.select('<c-j>', "vsnip#available(1) ? '<plug>(vsnip-expand-or-jump)' : '<c-j>'", { expr = true })
api.map.insert('<c-k>', "vsnip#jumpable(-1) ? '<plug>(vsnip-jump-prev)' : '<c-k>'", { expr = true })
api.map.select('<c-k>', "vsnip#jumpable(-1) ? '<plug>(vsnip-jump-prev)' : '<c-k>'", { expr = true })
