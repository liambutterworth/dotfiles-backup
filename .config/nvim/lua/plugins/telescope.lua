return function()
    local telescope = require('telescope')
    local previewers = require('telescope.previewers')

    telescope.setup({
        pickers = {
            buffers = {
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

    api.nmap({
        { '<space><space>', '<cmd>Telescope live_grep<cr>' },
        { '<space><cr>', '<cmd>Telescope find_files<cr>' },
        { '<space><bs>', '<cmd>Telescope buffers<cr>' },
        { '<space>:', '<cmd>Telescope command_history<cr>' },
        { "<space>'", '<cmd>Telescope marks<cr>' },
        { '<space>/', '<cmd>Telescope search_history<cr>' },
        { '<space>?', '<cmd>Telescope help_tags<cr>' },
        { '<space>c', '<cmd>Telescope commands<cr>' },
        { '<space>k', '<cmd>Telescope spell_suggest<cr>' },
        { '<space>m', '<cmd>Telescope man_pages<cr>' },
        { '<space>o', '<cmd>Telescope vim_options<cr>' },
        { '<space>gf', '<cmd>Telescope git_files<cr>' },
        { '<space>gs', '<cmd>Telescope git_status<cr>' },
        { '<space>gl', '<cmd>Telescope git_commits<cr>' },
        { '<space>gc', '<cmd>Telescope git_bcommits<cr>' },
        { '<space>gb', '<cmd>Telescope git_branches<cr>' },
        { '<space>gt', '<cmd>Telescope git_branches<cr>' },
    })
end
