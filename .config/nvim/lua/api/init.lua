local api = {
    call = vim.fn,
    global = vim.g,
    option = vim.opt,
    map = require('api.map'),
}

return api
