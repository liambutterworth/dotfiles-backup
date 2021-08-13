local api = require('api')

api.global.vsnip_snippet_dir = api.call.expand('~/.config/nvim/snippets')

api.global.vsnip_filetypes = {
    vue = { 'html', 'css', 'javascript' },
}

function expand_or_jump()
    if api.call['vsnip#available'](1) then
        return api.utils.escape('<plug>(vsnip-expand-or-jump)')
    else
        return api.utils.escape('<c-j>')
    end
end

function jump(direction)
    if direction == 1 and api.call['vsnip#jumpable'](1) then
        return api.utils.escape('<plug>(vsnip-jump-next)')
    elseif direction == -1 and api.call['vsnip#jumpable'](-1) then
        return api.utils.escape('<plug>(vsnip-jump-prev)')
    else
        return api.utils.escape('<c-k>')
    end
end

api.map.visual('s', '<plug>(vsnip-cut-text)')
api.map.normal('\\\\', '<cmd>VsnipOpenEdit<cr>')
api.map.normal('\\s', '<cmd>VsnipOpenVsplit<cr>')
api.map.normal('\\v', '<cmd>VsnipOpen<cr>')
api.map.insert('<c-j>', 'v:lua.expand_or_jump()', { expr = true })
api.map.select('<c-j>', 'v:lua.jump(1)', { expr = true })
api.map.insert('<c-k>', 'v:lua.jump(-1)', { expr = true })
api.map.select('<c-k>', 'v:lua.jump(-1)', { expr = true })
