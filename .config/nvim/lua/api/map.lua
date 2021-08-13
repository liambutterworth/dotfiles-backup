local map = {
    buffer = {}
}

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
    map[name] = function(key, value, options)
        vim.api.nvim_set_keymap(mode, key, value, options or {})
    end
end

for name, mode in pairs(modes) do
    map.buffer[name] = function(buffer, key, value, options)
        vim.api.nvim_buf_set_keymap(buffer, mode, key, value, options or {})
    end
end

return map
