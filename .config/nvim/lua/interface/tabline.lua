local left_separator = '<'
local right_separator = '>'

local getTabLabel = function(n)
    local current_win = vim.api.nvim_tabpage_get_win(n)
    local current_buf = vim.api.nvim_win_get_buf(current_win)
    local file_name = vim.api.nvim_buf_get_name(current_buf)

    if string.find(file_name, 'term://') ~= nil then
        return ' '..vim.api.nvim_call_function('fnamemodify', {file_name, ":p:t"})
    end

    file_name = vim.api.nvim_call_function('fnamemodify', {file_name, ":p:t"})

    if file_name == '' then
        return "No Name"
    end

    return file_name
end

function TabLine()
    local tabline = ''
    local tab_list = vim.api.nvim_list_tabpages()
    local current_tab = vim.api.nvim_get_current_tabpage()

    for _, val in ipairs(tab_list) do
        local file_name = getTabLabel(val)

        if val == current_tab then
            tabline = tabline.."%#TabLineSelSeparator# "
            tabline = tabline.."%#TabLineSel# "..file_name
            tabline = tabline.." %#TabLineSelSeparator#"
        else
            tabline = tabline.."%#TabLineSeparator# "
            tabline = tabline.."%#TabLine# "..file_name
            tabline = tabline.." %#TabLineSeparator#"
        end
    end

    tabline = tabline.."%="

    return tabline
end

vim.o.tabline = "%!v:lua.TabLine()"
