local get = {}

get.option = function(key, value)
    return vim.opt[key]
end

get.global = function(key, value)
    return vim.g[key]
end

return get
