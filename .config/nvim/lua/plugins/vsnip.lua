return function()
    api.set({
        vsnip_snippet_dir = api.fn.expand('~/.config/nvim/snippets'),

        vsnip_filetypes = {
            javascript = { 'javascript', 'c' },
            vue = { 'html', 'css', 'javascript', 'c'},
            php = { 'php', 'c' },
        },
    })

    function expand_or_jump()
        if api.fn['vsnip#available'](1) then
            return api.escape('<plug>(vsnip-expand-or-jump)')
        else
            return api.escape('<c-j>')
        end
    end

    function jump(direction)
        if direction == 1 and api.fn['vsnip#jumpable'](1) then
            return api.escape('<plug>(vsnip-jump-next)')
        elseif direction == -1 and api.fn['vsnip#jumpable'](-1) then
            return api.escape('<plug>(vsnip-jump-prev)')
        else
            return api.escape('<c-k>')
        end
    end

    api.vmap('sy', '<plug>(vsnip-select-text)<esc>', { noremap = false })
    api.vmap('ss', '<plug>(vsnip-cut-text)', { noremap = false })

    api.imap({
        { '<c-j>', 'v:lua.expand_or_jump()', { expr = true, noremap = false } },
        { '<c-k>', 'v:lua.jump(-1)', { expr = true, noremap = false } },
    })

    api.smap({
        { '<c-j>', 'v:lua.jump(1)', { expr = true, noremap = false } },
        { '<c-k>', 'v:lua.jump(-1)', { expr = true, noremap = false } },
    })
end
