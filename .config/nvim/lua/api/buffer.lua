local buffer = {
    opt = {},
    map = {},
}

buffer.current = function()
    return vim.fn.bufnr()
end

buffer.get = function(...)
    local params = {...}
    local number, name, default

    if #params == 3 then
        number, name, default = unpack(params)
    elseif #params == 2 then
        if type(params[1]) == 'number' then
            number, name = unpack(params)
        else
            name, default = unpack(params)
        end
    else
        name = params[1]
    end

    local exists, value = pcall(function()
        return vim.api.nvim_buf_get_var(number or 0, name)
    end)

    return exists and value or default
end

buffer.set = function(...)
    local params = {...}
    local number, name, value

    if #params == 3 then
        number, name, value = unpack(params)
    elseif #params == 2 then
        name, value = unpack(params)
    end

    vim.api.nvim_buf_set_var(number or 0, name, value)
end

buffer.opt.get = function(...)
    local params = {...}
    local number, name, default

    if #params == 3 then
        number, name, default = unpack(params)
    elseif #params == 2 then
        if type(params[1]) == 'number' then
            number, name = unpack(params)
        else
            name, default = unpack(params)
        end
    else
        name = params[1]
    end

    local exists, value = pcall(function()
        return vim.api.nvim_buf_get_option(number or 0, name)
    end)

    return exists and value or default
end

buffer.opt.set = function(...)
    local params = {...}
    local number, name, value

    if #params == 3 then
        number, name, value = unpack(params)
    elseif #params == 2 then
        name, value = unpack(params)
    end

    vim.api.nvim_buf_set_option(number or 0, name, value)
end

for name, mode in pairs(api.modes) do
    buffer.map[name] = function(...)
        local params = {...}

        if type(params[1]) == 'table' then
            for _, map in ipairs(params[1]) do
                buffer.map[name](unpack(map))
            end
        else
            local number, key, value, options

            if #params == 4 then
                number, key, value, options = unpack(params)
            elseif #params == 3 then
                if type(params[1]) == 'number' then
                    number, key, value = unpack(params)
                else
                    key, value, options = unpack(params)
                end
            else
                key, value = unpack(params)
            end

            vim.api.nvim_buf_set_keymap(
                number or 0,
                mode,
                key,
                value,
                options or {}
            )
        end
    end
end

return buffer
