return function()
    local telescope = require('telescope')
    local actions = require('telescope.actions')

    telescope.setup({
        defaults = {
            mappings = {
                i = {
                    ['<c-x>'] = false,
                    ['<c-s>'] = actions.file_split,
                    ['<s-tab>'] = false,
                    ['<tab>'] = actions.toggle_selection,
                },
            },

            prompt_prefix = '❯ ',
            selection_caret = '❯ ',
        },


        pickers = {
            buffers = {
                sort_mru = true,

                mappings = {
                    i = {
                        ['<c-d>'] = 'delete_buffer',
                    },

                    n = {
                        ['<c-d>'] = 'delete_buffer',
                    },
                },
            },
        },
    })

    vim.api.nvim_set_keymap('n', '<space><space>', '<cmd>Telescope live_grep<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space><cr>', '<cmd>Telescope find_files<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space><bs>', '<cmd>Telescope buffers<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>:', '<cmd>Telescope command_history<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', "<space>'", '<cmd>Telescope marks<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>/', '<cmd>Telescope search_history<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>?', '<cmd>Telescope help_tags<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>c', '<cmd>Telescope commands<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>h', '<cmd>Telescope highlights<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>k', '<cmd>Telescope spell_suggest<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>m', '<cmd>Telescope man_pages<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>o', '<cmd>Telescope vim_options<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>gf', '<cmd>Telescope git_files<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>gs', '<cmd>Telescope git_status<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>gl', '<cmd>Telescope git_commits<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>gc', '<cmd>Telescope git_bcommits<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>gb', '<cmd>Telescope git_branches<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>gt', '<cmd>Telescope git_branches<cr>', { noremap = true })

    vim.cmd([[
        highlight TelescopeMatching cterm=bold ctermfg=green
        highlight TelescopePromptPrefix cterm=bold ctermfg=magenta
        highlight TelescopeSelection cterm=bold ctermbg=none
        highlight TelescopeSelectionCaret cterm=bold ctermbg=none ctermfg=magenta
    ]])
end
