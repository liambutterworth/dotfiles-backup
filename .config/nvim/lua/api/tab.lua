local tab = {}

tab.get_list = function()
    return vim.api.nvim_list_tabpages()
end

tab.get_current = function()
    return vim.api.nvim_get_current_tabpage()
end

tab.get_name = function(number)
    local window = vim.api.nvim_tabpage_get_win(number)
    local buffer = vim.api.nvim_win_get_buf(window)

    return vim.api.nvim_buf_get_name(buffer)
end


return tab
