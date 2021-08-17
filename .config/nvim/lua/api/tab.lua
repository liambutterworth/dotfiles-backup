local buffer = require('api.buffer')
local window = require('api.window')
local tab = {}

tab.get_count = function()
    return vim.fn.tabpagenr('$')
end

tab.get_list = function()
    return vim.api.nvim_list_tabpages()
end

tab.get_current = function()
    return vim.api.nvim_get_current_tabpage()
end

tab.get_window = function(number)
    return vim.api.nvim_tabpage_get_win(number)
end

tab.get_current_window = function()
    return tab.get_window(tab.get_current())
end

tab.get_buffer = function(number)
    return window.get_buffer(tab.get_window(number))
end

tab.get_current_buffer = function()
    return tab.get_buffer(tab.get_current())
end

tab.get_name = function(number)
    return buffer.get_name(tab.get_buffer(number))
end

tab.get_current_name = function()
    return tab.get_name(tab.get_current())
end

return tab
