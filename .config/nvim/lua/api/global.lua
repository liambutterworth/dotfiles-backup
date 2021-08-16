local global = {
    map = {},
    opt = {},
}

global.get = function(name, default)
    return vim.g[name] or default
end

global.set = function(name, value)
    if type(name) == 'table' then
        for name, value in pairs(name) do
            global.set(name, value)
        end
    else
        vim.g[name] = value
    end
end

global.opt.get = function(name, default)
    return vim.opt[name] or default
end

global.opt.set = function(name, value)
    if type(name) == 'table' then
        for name, value in pairs(name) do
            global.opt.set(name, value)
        end
    else
        vim.opt[name] = value
    end
end

for name, mode in pairs(api.modes) do
    global.map[name] = function(key, value, options)
        if type(key) == 'table' then
            for _, map in ipairs(key) do
                global.map[name](unpack(map))
            end
        else
            vim.api.nvim_set_keymap(mode, key, value, options or {})
        end
    end
end

return global
