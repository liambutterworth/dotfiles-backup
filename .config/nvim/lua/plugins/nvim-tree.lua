return function()
    local tree = require('nvim-tree')

    tree.setup()

    vim.api.nvim_set_keymap('n', '\\', '<cmd>NvimTreeToggle<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '|', '<cmd>NvimTreeFindFile<cr>', { noremap = true })
end
