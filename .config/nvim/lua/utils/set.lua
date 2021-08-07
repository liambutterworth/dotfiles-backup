local set = {}

set.option = function(key, value)
    vim.opt[key] = value
end

set.global = function(key, value)
    vim.g[key] = value
end

return set
