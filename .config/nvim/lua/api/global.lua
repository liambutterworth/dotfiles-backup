local global = {
    map = {},
    opt = {},
}

global.get = function(name, default)
    return vim.g[name] or default
end

global.set = function(name, value)
    vim.g[name] = value
end

global.opt.get = function(name, default)
    return vim.opt[name] or default
end

global.opt.set = function(name, value)
    vim.opt[name] = value
end

for name, mode in pairs(modes) do
    global.map[name] = function(key, value, options)
        vim.api.nvim_set_keymap(mode, key, value, options or {})
    end
end

return global
