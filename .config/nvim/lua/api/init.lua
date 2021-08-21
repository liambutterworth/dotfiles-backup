api = {
    opt = {},
    fn = vim.fn,
    cmd = vim.cmd,
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

api.add_get_method = function(target, key, method)
    target[key] = function(...)
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
            return method(number, name)
        end)

        return exists and value or default
    end
end

api.add_set_method = function(target, key, method)
    target[key] = function(...)
        local params = {...}
        local number = 0
        local key, value

        if #params == 3 then
            number, key, value = unpack(params)
        else
            key, value = unpack(params)
        end

        if type(key) == 'table' then
            for key, value in pairs(key) do
                method(number, key, value)
            end
        else
            method(number, key, value)
        end
    end
end

api.add_map_methods = function(target)
    for _, mode in ipairs({ 'c', 'i', 'n', 'o', 's', 't', 'v', 'x' }) do
        local method = mode .. 'map'

        target[method] = function(...)
            local params = {...}
            local number = 0
            local options = {}

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
                    target[method](number, unpack(map))
                end
            else
                if options.noremap == nil then
                    options.noremap = true
                end

                vim.api.nvim_buf_set_keymap(
                    number,
                    mode,
                    key,
                    value,
                    options
                )
            end
        end
    end
end

api.buf = require('api.buffer')
api.win = require('api.window')
api.tab = require('api.tab')
api.lsp = require('api.lsp')

return api
