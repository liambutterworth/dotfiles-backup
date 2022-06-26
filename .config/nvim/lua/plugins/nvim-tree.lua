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
            -- adaptive_size = true,
            width = 50,

            mappings = {
                custom_only = true,

                list = {
                    { key = 'o', cb = tree_cb('edit') },
                    { key = 'O', cb = tree_cb('cd') },
                    { key = 'p', cb = tree_cb('parent_node') },
                    { key = 'P', cb = tree_cb('close_node') },
                    { key = '<C-v>', cb = tree_cb('vsplit') },
                    { key = '<C-x>', cb = tree_cb('split') },
                    { key = '<C-t>', cb = tree_cb('tabnew') },
                    { key = '<', cb = tree_cb('prev_sibling') },
                    { key = '>', cb = tree_cb('next_sibling') },
                    { key = 'K', cb = tree_cb('first_sibling') },
                    { key = 'J', cb = tree_cb('last_sibling') },
                    { key = 'I', cb = tree_cb('toggle_ignored') },
                    { key = 'R', cb = tree_cb('refresh') },
                    { key = 'a', cb = tree_cb('create') },
                    { key = 'd', cb = tree_cb('remove') },
                    { key = 'D', cb = tree_cb('trash') },
                    { key = 'r', cb = tree_cb('rename') },
                    { key = '<C-r>', cb = tree_cb('full_rename') },
                    { key = 'c', cb = tree_cb('copy') },
                    { key = 'x', cb = tree_cb('cut') },
                    { key = 'v', cb = tree_cb('paste') },
                    { key = 'y', cb = tree_cb('copy_name') },
                    { key = 'Y', cb = tree_cb('copy_path') },
                    { key = 'gy', cb = tree_cb('copy_absolute_path') },
                    { key = '[c', cb = tree_cb('prev_git_item') },
                    { key = ']c', cb = tree_cb('next_git_item') },
                    { key = 's', cb = tree_cb('system_open') },
                    { key = 'q', cb = tree_cb('close') },
                    { key = ',', cb = tree_cb('toggle_help') },
                    { key = '.', cb = tree_cb('toggle_dotfiles') },
                },
            },
        },
    })

    vim.api.nvim_set_keymap('n', '<cr><cr>', '<cmd>NvimTreeToggle<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<cr>f', '<cmd>NvimTreeFindFile<cr>', { noremap = true })
end
