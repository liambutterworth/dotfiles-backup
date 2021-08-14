local utils = {}

utils.escape = function(string)
    return vim.api.nvim_replace_termcodes(string, true, true, true)
end

utils.check_back_space = function()
    local col = vim.fn.col('.') - 1

    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

utils.get_current_buffer = function()
    return vim.fn.bufnr()
end

utils.get_current_window = function()
    return vim.fn.winnr()
end

utils.get_window_width = function(buffer)
    return vim.fn.winwidth(buffer)
end

utils.get_tab_list = function()
    return vim.api.nvim_list_tabpages()
end

utils.get_current_tab = function()
    return vim.api.nvim_get_current_tabpage()
end

utils.get_tab_name = function(number)
    local window = vim.api.nvim_tabpage_get_win(number)
    local buffer = vim.api.nvim_win_get_buf(window)

    return vim.api.nvim_buf_get_name(buffer)
end

utils.get_lsp_error_count = function(buffer)
    return vim.lsp.diagnostic.get_count(buffer, 'Error')
end

utils.get_lsp_warning_count = function(buffer)
    return vim.lsp.diagnostic.get_count(buffer, 'Warnings')
end

utils.get_lsp_info_count = function(buffer)
    return vim.lsp.diagnostic.get_count(buffer, 'Information')
end

return utils
