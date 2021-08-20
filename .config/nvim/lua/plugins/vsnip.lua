return function()
    api.set({
        vsnip_snippet_dir = api.fn.expand('~/.config/nvim/snippets'),

        vsnip_filetypes = {
            vue = { 'html', 'css', 'javascript' },
        },
    })

    api.vmap('sy', '<plug>(vsnip-select-text)<esc>', { noremap = false })
    api.vmap('ss', '<plug>(vsnip-cut-text)', { noremap = false })

    api.imap({
        { '<c-j>', '<plug>(vsnip-jump-next)', { noremap = false } },
        { '<c-k>', '<plug>(vsnip-jump-prev)', { noremap = false } },
        { '<c-l>', '<plug>(vsnip-expand)', { noremap = false } },
    })

    api.smap({
        { '<c-j>', '<plug>(vsnip-jump-next>', { noremap = false } },
        { '<c-k>', '<plug>(vsnip-jump-prev)', { noremap = false } },
    })
end
