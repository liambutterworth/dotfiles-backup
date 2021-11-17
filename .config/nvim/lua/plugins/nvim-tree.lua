return function()
    local tree = require('nvim-tree')
    local callback = require('nvim-tree.config').nvim_tree_callback

    tree.setup({
        view = {
            mappings = {
                list = {
                    { key = { 'o' }, cb = callback('edit') },
                    { key = { '<cr>' }, cb = callback('close') }
                }
            }
        }
    })

    vim.api.nvim_set_keymap('n', '<cr>', '<cmd>NvimTreeToggle<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '\\', '<cmd>NvimTreeFindFile<cr>', { noremap = true })
end
