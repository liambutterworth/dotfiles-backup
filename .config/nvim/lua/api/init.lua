local api = vim.api

api.buffer = vim.bo
api.call = vim.fn
api.cmd = vim.cmd
api.global = vim.g
api.lsp = vim.lsp
api.map = require('api.map')
api.option = vim.opt
api.utils = require('api.utils')
api.window = vim.wo

api.exec = function(command)
    vim.api.nvim_exec(command, false)
end

return api
