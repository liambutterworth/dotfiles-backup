return function()
    vim.g.floaterm_shell = 'fish'
    vim.g.floaterm_height = 0.8
    vim.g.floaterm_width = 0.8
    vim.g.floaterm_keymap_toggle = '<c-\\><c-\\>'
    vim.g.floaterm_keymap_new = '<c-\\><cr>'
    vim.g.floaterm_keymap_kill = '<c-\\><bs>'
    vim.g.floaterm_keymap_prev = '<c-\\><c-[>'
    vim.g.floaterm_keymap_next = '<c-\\><c-]>'

    vim.cmd([[
        highlight FloatermBorder ctermbg=none guibg=none
    ]])
end
