local tab = {}

tab.list = function()
    return vim.api.nvim_list_tabpages()
end

tab.current = function()
    return vim.api.nvim_get_current_tabpage()
end

tab.count = function()
    return vim.fn.tabpagenr('$')
end

tab.name = function(number)
    local window = vim.api.nvim_tabpage_get_win(number)
    local buffer = vim.api.nvim_win_get_buf(window)

    return vim.api.nvim_buf_get_name(buffer)
end

return tab
