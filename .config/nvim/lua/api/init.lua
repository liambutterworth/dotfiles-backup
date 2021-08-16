api = {}

modes = {
    command = 'c',
    normal = 'n',
    insert = 'i',
    operator = 'o',
    terminal = 't',
    select = 's',
    visual = 'v',
}

local global = require('api.global')
local methods = require('api.methods')

api.vim = vim.fn
api.get = global.get
api.set = global.set
api.map = global.map
api.opt = global.opt
api.buf = require('api.buffer')
api.win = require('api.window')
api.tab = require('api.tab')
api.lsp = require('api.lsp')

for name, method in pairs(methods) do
    api[name] = method
end

return api
