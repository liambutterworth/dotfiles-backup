return function()
    local tree = require('nvim-tree')

    vim.g.nvim_tree_git_hl = 0

    -- vim.g.nvim_tree_show_icons = {
    --     files = 1,
    --     folders = 1,
    --     folder_arrows = 1,
    --     git = 0
    -- }

    vim.g.nvim_tree_icons = {
        default = ''
    }

    tree.setup({
        git = {
            enable = false,
            ignore = false
        }
    })

    vim.api.nvim_set_keymap('n', '\\', '<cmd>NvimTreeToggle<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '|', '<cmd>NvimTreeFindFile<cr>', { noremap = true })
end
