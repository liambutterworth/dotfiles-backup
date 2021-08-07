local call = function(method)
    return vim.fn[method]
end

return call
