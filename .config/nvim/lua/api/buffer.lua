local buffer = {
    opt = {},
    map = {},
}

buffer.get_current = function()
    return vim.fn.bufnr()
end

buffer.get_name = function(number)
    return vim.api.nvim_buf_get_name(number)
end

buffer.get_current_name = function()
    return buffer.get_name(buffer.get_current())
end

buffer.get = function(...)
    local params = {...}
    local number = 0
    local name, default

    if #params == 3 then
        number, name, default = unpack(params)
    elseif #params == 2 and type(params[1]) == 'number' then
        number, name = unpack(params)
    elseif #params == 2 then
        name, default = unpack(params)
    else
        name = params[1]
    end

    local exists, value = pcall(function()
        return vim.api.nvim_buf_get_var(number, name)
    end)

    return exists and value or default
end

buffer.set = function(...)
    local params = {...}
    local number, name, value

    if #params == 3 then
        number, name, value = unpack(params)
    else
        name, value = unpack(params)
    end

    if type(name) == 'table' then
        for name, value in pairs(name) do
            buffer.set(number or 0, name, value)
        end
    else
        vim.api.nvim_buf_set_var(number or 0, name, value)
    end
end

buffer.opt.get = function(...)
    local params = {...}
    local number = 0
    local name, default

    if #params == 3 then
        number, name, default = unpack(params)
    elseif #params == 2 and type(params[1]) == 'number' then
        number, name = unpack(params)
    elseif #params == 2 then
        name, default = unpack(params)
    else
        name = params[1]
    end

    local exists, value = pcall(function()
        return vim.api.nvim_buf_get_option(number, name)
    end)

    return exists and value or default
end

buffer.opt.set = function(...)
    local params = {...}
    local number = 0
    local name, value

    if #params == 3 then
        number, name, value = unpack(params)
    elseif #params == 2 then
        name, value = unpack(params)
    end

    if type(name) == 'table' then
        for name, value in ipairs(name) do
            buffer.opt.set(number, name, value)
        end
    else
        vim.api.nvim_buf_set_option(number, name, value)
    end
end

for name, mode in pairs(api.modes) do
    local defaults = {
        noremap = true,
    }

    buffer.map[name] = function(...)
        local params = {...}
        local number = 0
        local options = {}
        local key, value

        if #params == 4 then
            number, key, value, options = unpack(params)
        elseif #params == 3 and type(params[1]) == 'number' then
            number, key, value = unpack(params)
        elseif #params == 3 then
            key, value, options = unpack(params)
        elseif #params == 2 and type(params[2]) == 'table' then
            number, key = unpack(params)
        else
            key, value = unpack(params)
        end

        if type(key) == 'table' then
            for _, map in ipairs(key) do
                buffer.map[name](number, unpack(map))
            end
        else
            for key, value in pairs(defaults) do
                if options[key] == nil then
                    options[key] = defaults[key]
                end
            end

            vim.api.nvim_buf_set_keymap(number, mode, key, value, options)
        end
    end
end

return buffer
