local window = {}

window.get_current = function()
    return vim.fn.winnr()
end

window.get_buffer = function(number)
    return vim.api.nvim_win_get_buf(number)
end

window.get_current_buffer = function()
    return window.get_buffer(window.get_current())
end

return window
