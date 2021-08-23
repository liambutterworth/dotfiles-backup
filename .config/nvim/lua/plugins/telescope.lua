return function()
    local telescope = require('telescope')
    local actions = require('telescope.actions')

    telescope.setup({
        defaults = {
            prompt_prefix = '❯ ',
            selection_caret = '❯ ',

            borderchars = {
                '─',
                '│',
                '─',
                '│',
                '┌',
                '┐',
                '┘',
                '└'
            },

            mappings = {
                i = {
                    ['<c-x>'] = false,
                    ['<c-s>'] = actions.file_split,
                },

                n = {
                    ['<c-x>'] = false,
                    ['<c-s>'] = actions.file_split,
                },
            },
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
    vim.api.nvim_set_keymap('n', '<space>]', '<cmd>Telescope tagstack<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>:', '<cmd>Telescope command_history<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', "<space>'", '<cmd>Telescope marks<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>"', '<cmd>Telescope registers<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>/', '<cmd>Telescope search_history<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>?', '<cmd>Telescope help_tags<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>c', '<cmd>Telescope commands<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>gf', '<cmd>Telescope git_files<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>gs', '<cmd>Telescope git_status<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>gl', '<cmd>Telescope git_commits<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>gc', '<cmd>Telescope git_bcommits<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>gb', '<cmd>Telescope git_branches<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>gt', '<cmd>Telescope git_stash<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>h', '<cmd>Telescope highlights<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>j', '<cmd>Telescope jumplist<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>n', '<cmd>Telescope keymaps<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>la', '<cmd>Telescope lsp_code_actions<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>ld', '<cmd>Telescope lsp_document_diagnostics<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>li', '<cmd>Telescope lsp_implementations<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>lk', '<cmd>Telescope lsp_definitions<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>lr', '<cmd>Telescope lsp_references<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>ls', '<cmd>Telescope lsp_document_symbols<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>lw', '<cmd>Telescope lsp_workspace_symbols<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>m', '<cmd>Telescope man_pages<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>o', '<cmd>Telescope vim_options<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>q', '<cmd>Telescope quickfix<cr>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<space>s', '<cmd>Telescope spell_suggest<cr>', { noremap = true })

    vim.cmd([[
        highlight TelescopeMatching cterm=bold ctermfg=green
        highlight TelescopeMultiSelection ctermfg=magenta
        highlight TelescopeNormal cterm=none ctermfg=white
        highlight TelescopePromptPrefix cterm=bold ctermfg=magenta
        highlight TelescopeResultsDiffChange ctermbg=none ctermfg=yellow
        highlight TelescopeResultsDiffAdd ctermbg=none ctermfg=green
        highlight TelescopeResultsDiffDelete ctermbg=none ctermfg=red
        highlight TelescopeResultsDiffUntracked ctermbg=none ctermfg=red
        highlight TelescopeResultsClass ctermfg=blue
        highlight TelescopeResultsConstant ctermfg=magenta
        highlight TelescopeResultsField ctermfg=blue
        highlight TelescopeResultsIdentifier ctermfg=yellow
        highlight TelescopeResultsFunction ctermfg=cyan
        highlight TelescopeResultsMethod ctermfg=cyan
        highlight TelescopeResultsOperator ctermfg=blue
        highlight TelescopeResultsStruct ctermfg=yellow
        highlight TelescopeResultsVariable ctermfg=blue
        highlight TelescopeSelection cterm=bold ctermbg=none ctermfg=white
        highlight TelescopeSelectionCaret cterm=bold ctermbg=none ctermfg=magenta
    ]])
end