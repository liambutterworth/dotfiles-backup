local api = require('api')

api.map.normal('-', ':Goyo<cr>')

api.cmd([[
    augroup Goyo
        autocmd User GoyoEnter Limelight
        autocmd User GoyoLeave Limelight! | colorscheme custom
    augroup end
]])
