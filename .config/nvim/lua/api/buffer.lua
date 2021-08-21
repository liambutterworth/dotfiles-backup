local buffer = {
    opt = {},
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

api.add_map_methods(buffer)
api.add_get_method(buffer, 'get', vim.api.nvim_buf_get_var)
api.add_set_method(buffer, 'set', vim.api.nvim_buf_set_var)
api.add_get_method(buffer.opt, 'get', vim.api.nvim_buf_get_option)
api.add_set_method(buffer.opt, 'set', vim.api.nvim_buf_set_option)

return buffer
