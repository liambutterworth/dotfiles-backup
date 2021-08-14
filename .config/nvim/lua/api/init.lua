return {
    buffer = vim.bo,
    call = vim.fn,
    cmd = vim.cmd,
    shell = vim.fn.system,
    global = vim.g,
    lsp = vim.lsp,
    map = require('api.map'),
    option = vim.opt,
    utils = require('api.utils'),
    window = vim.wo,
}
