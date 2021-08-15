return function()
    local map = require('utils.map')

    vim.g.limelight_conceal_ctermfg = '8'

    map.normal('-', ':Goyo<cr>')

    vim.cmd([[
        augroup Goyo
            autocmd User GoyoEnter Limelight
            autocmd User GoyoLeave Limelight! | colorscheme custom
        augroup end
    ]])
end
