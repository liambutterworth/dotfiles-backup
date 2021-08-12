local api = require('api')

api.global.vsnip_snippet_dir = api.call.expand('~/.config/nvim/snippets')

api.map.insert('<cr>', "vsnip#expandable() ? '<plug>(vsnip-expand)' : '<cr>'", { expr = true })
api.map.select('<cr>', "vsnip#expandable() ? '<plug>(vsnip-expand)' : '<cr>'", { expr = true })
api.map.insert('<c-j>', "vsnip#jumpable(1) ? '<plug>(vsnip-jump-next)' : '<c-j>'", { expr = true })
api.map.select('<c-j>', "vsnip#jumpable(1) ? '<plug>(vsnip-jump-next)' : '<c-j>'", { expr = true })
api.map.insert('<c-k>', "vsnip#jumpable(-1) ? '<plug>(vsnip-jump-prev)' : '<c-k>'", { expr = true })
api.map.select('<c-k>', "vsnip#jumpable(-1) ? '<plug>(vsnip-jump-prev)' : '<c-k>'", { expr = true })
