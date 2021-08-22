return function()
    local gitsigns = require('gitsigns')

    gitsigns.setup({
        signs = {
            add = {
                hl = 'GitSignsAdd',
                linehl = 'GitSignsAddLn',
                numhl = 'GitSignsAddNr',
                text = '│',
            },

            change = {
                hl = 'GitSignsChange',
                linehl = 'GitSignsChangeLn',
                numhl = 'GitSignsChangeNr',
                text = '│',
            },

            delete = {
                hl = 'GitSignsDelete',
                linehl = 'GitSignsDeleteLn',
                numhl = 'GitSignsDeleteNr',
                text = '│',
            },

            topdelete = {
                hl = 'GitSignsDelete',
                linehl = 'GitSignsDeleteLn',
                numhl = 'GitSignsDeleteNr',
                text = '│',
            },

            changedelete = {
                hl = 'GitSignsChange',
                linehl = 'GitSignsChangeLn',
                numhl = 'GitSignsChangeNr',
                text = '│',
            },
        },
    })

    vim.cmd([[
        highlight GitSignsAdd ctermfg=green
        highlight GitSignsChange ctermfg=yellow
        highlight GitSignsDelete ctermfg=red
    ]])
end
