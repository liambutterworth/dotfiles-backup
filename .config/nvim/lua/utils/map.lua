local map = {}

local modes = {
    command = 'c',
    normal = 'n',
    insert = 'i',
    operator = 'o',
    terminal = 't',
    select = 's',
    visual = 'v',
}

for name, mode in pairs(modes) do
    map[name] = function(...)
        local params = {...}

        if (type(params[1]) == 'number') then
            local buffer = params[1]
            local key = params[2]
            local value = params[3]
            local options = params[4] or {}

            vim.api.nvim_buf_set_keymap(buffer, mode, key, value, options)
        else
            local key = params[1]
            local value = params[2]
            local options = params[3] or {}

            vim.api.nvim_set_keymap(mode, key, value, options)
        end
    end
end

return map
