return function()
    vim.g.vsnip_snippet_dir = vim.fn.expand('~/.config/nvim/snippets')

    vim.g.vsnip_filetypes = {
        vue = { 'html', 'css', 'javascript' },
    }

    vim.api.nvim_set_keymap('v', 'sy', '<plug>(vsnip-select-text)<esc>', {})
    vim.api.nvim_set_keymap('v', 'ss', '<plug>(vsnip-cut-text)', {})
    vim.api.nvim_set_keymap('i', '<c-j>', '<plug>(vsnip-jump-next)', {})
    vim.api.nvim_set_keymap('i', '<c-k>', '<plug>(vsnip-jump-prev)', {})
    vim.api.nvim_set_keymap('i', '<c-l>', '<plug>(vsnip-expand)', {})
    vim.api.nvim_set_keymap('s', '<c-j>', '<plug>(vsnip-jump-next)', {})
    vim.api.nvim_set_keymap('s', '<c-k>', '<plug>(vsnip-jump-prev)', {})
end
