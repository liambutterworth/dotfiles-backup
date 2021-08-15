return function()
    local escape = require('utils.escape')
    local map = require('utils.map')

    vim.g.vsnip_snippet_dir = vim.fn.expand('~/.config/nvim/snippets')

    vim.g.vsnip_filetypes = {
        javascript = { 'javascript', 'c' },
        vue = { 'html', 'css', 'javascript', 'c'},
        php = { 'php', 'c' },
    }

    function expand_or_jump()
        if vim.fn['vsnip#available'](1) then
            return escape('<plug>(vsnip-expand-or-jump)')
        else
            return escape('<c-j>')
        end
    end

    function jump(direction)
        if direction == 1 and vim.fn['vsnip#jumpable'](1) then
            return escape('<plug>(vsnip-jump-next)')
        elseif direction == -1 and vim.fn['vsnip#jumpable'](-1) then
            return escape('<plug>(vsnip-jump-prev)')
        else
            return escape('<c-k>')
        end
    end

    map.visual('\\y', '<plug>(vsnip-select-text)<esc>')
    map.visual('\\c', '<plug>(vsnip-cut-text)')
    map.normal('\\\\', '<cmd>VsnipOpenEdit<cr>')
    map.normal('\\s', '<cmd>VsnipOpenVsplit<cr>')
    map.normal('\\v', '<cmd>VsnipOpen<cr>')
    map.insert('<c-j>', 'v:lua.expand_or_jump()', { expr = true })
    map.select('<c-j>', 'v:lua.jump(1)', { expr = true })
    map.insert('<c-k>', 'v:lua.jump(-1)', { expr = true })
    map.select('<c-k>', 'v:lua.jump(-1)', { expr = true })
end
