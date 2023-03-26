return function()
    local tree = require('nvim-tree')
    local tree_cb = require'nvim-tree.config'.nvim_tree_callback

    tree.setup({
        disable_netrw = true,
        hijack_netrw = true,

        git = {
            enable = false,
            ignore = false
        },

        renderer = {
            highlight_git = false,
        },

        view = {
            width = 40,
        },
    })

    vim.api.nvim_set_keymap('n', '<cr><cr>', '<cmd>NvimTreeToggle<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<cr>f', '<cmd>NvimTreeFindFile<cr>', { noremap = true })
end
