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
    local defaults = {
        noremap = true,
    }

    global.map[name] = function(key, value, options)
        options = options or {}

        for key, value in pairs(defaults) do
            if options[key] == nil then
                options[key] = defaults[key]
            end
        end

        if type(key) == 'table' then
            for _, map in ipairs(key) do
                global.map[name](unpack(map))
            end
        else
            vim.api.nvim_set_keymap(mode, key, value, options)
        end
    end
end

return global
