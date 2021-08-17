return function()
    api.set({
        vsnip_snippet_dir = api.vim.expand('~/.config/nvim/snippets'),

        vsnip_filetypes = {
            javascript = { 'javascript', 'c' },
            vue = { 'html', 'css', 'javascript', 'c'},
            php = { 'php', 'c' },
        },
    })

    function expand_or_jump()
        if api.vim['vsnip#available'](1) then
            return api.escape('<plug>(vsnip-expand-or-jump)')
        else
            return api.escape('<c-j>')
        end
    end

    function jump(direction)
        if direction == 1 and api.vim['vsnip#jumpable'](1) then
            return api.escape('<plug>(vsnip-jump-next)')
        elseif direction == -1 and vim.fn['vsnip#jumpable'](-1) then
            return api.escape('<plug>(vsnip-jump-prev)')
        else
            return api.escape('<c-k>')
        end
    end

    api.map.visual({
        { 'Y', '<plug>(vsnip-select-text)<esc>' },
        { 'S', '<plug>(vsnip-cut-text)' },
    })

    api.map.insert({
        { '<c-j>', 'v:lua.expand_or_jump()', { expr = true, noremap = false } },
        { '<c-k>', 'v:lua.jump(-1)', { expr = true, noremap = false } },
    })

    api.map.select({
        { '<c-j>', 'v:lua.jump(1)', { expr = true, noremap = false } },
        { '<c-k>', 'v:lua.jump(-1)', { expr = true, noremap = false } },
    })
end
