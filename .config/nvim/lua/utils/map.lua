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
    map[name] = function(key, value, opts)
        vim.api.nvim_set_keymap(mode, key, value, opts or {})
    end
end

return map
