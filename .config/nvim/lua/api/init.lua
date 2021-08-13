local api = {}

api.buffer = vim.bo
api.call = vim.fn
api.exec = vim.api.nvim_exec
api.global = vim.g
api.lsp = vim.lsp
api.map = require('api.map')
api.option = vim.opt
api.utils = require('api.utils')
api.window = vim.wo

return api
