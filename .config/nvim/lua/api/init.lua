return {
    buffer = vim.bo,
    call = vim.fn,
    cmd = vim.cmd,
    global = vim.g,
    lsp = vim.lsp,
    map = require('api.map'),
    option = vim.opt,
    tab = require('api.tab'),
    utils = require('api.utils'),
    window = vim.wo,
    exec = require('api.exec'),
}
