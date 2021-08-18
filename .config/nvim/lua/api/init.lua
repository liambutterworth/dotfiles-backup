api = {
    opt = {},
    fn = vim.fn,
    cmd = vim.cmd,
    buf = require('api.buffer'),
    win = require('api.window'),
    tab = require('api.tab'),
    lsp = require('api.lsp'),
}

api.escape = function(string)
    return vim.api.nvim_replace_termcodes(string, true, true, true)
end

api.check_backspace = function()
    local col = vim.fn.col('.') - 1

    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

api.get = function(name, default)
    return vim.g[name] or default
end

api.set = function(name, value)
    if type(name) == 'table' then
        for name, value in pairs(name) do
            api.set(name, value)
        end
    else
        vim.g[name] = value
    end
end

api.opt.get = function(name, default)
    return vim.opt[name] or default
end

api.opt.set = function(name, value)
    if type(name) == 'table' then
        for name, value in pairs(name) do
            api.opt.set(name, value)
        end
    else
        vim.opt[name] = value
    end
end

for _, mode in ipairs({ 'c', 'i', 'n', 'o', 's', 't', 'v', 'x' }) do
    local method = mode .. 'map'

    api[method] = function(key, value, options)
        if type(key) == 'table' then
            for _, map in ipairs(key) do
                api[method](unpack(map))
            end
        else
            options = options or {}

            if options.noremap == nil then
                options.noremap = true
            end

            vim.api.nvim_set_keymap(mode, key, value, options)
        end
    end
end

return api
