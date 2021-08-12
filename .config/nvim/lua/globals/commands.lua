local api = require('api')

api.exec([[
    augroup Term
        autocmd!
        autocmd TermOpen * startinsert
        autocmd TermOpen * setlocal nonumber norelativenumber
    augroup end
]], false)
