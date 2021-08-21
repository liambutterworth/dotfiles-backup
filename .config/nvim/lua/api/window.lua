local window = {
    opt = {}
}

window.get_current = function()
    return vim.fn.winnr()
end

window.get_buffer = function(number)
    return vim.fn.winbufnr(number or api.buf.get_current())
end

window.get_current_buffer = function()
    return window.get_buffer(window.get_current())
end

api.add_map_methods(window)
api.add_get_method(window, 'get', vim.api.nvim_buf_get_var)
api.add_set_method(window, 'set', vim.api.nvim_buf_set_var)
api.add_get_method(window.opt, 'get', vim.api.nvim_buf_get_option)
api.add_set_method(window.opt, 'set', vim.api.nvim_buf_set_option)

return window
