local tabline = {
    segments = {},
}

function tabline:append(segment)
    table.insert(self.segments, segment)
end

function tabline:build()
    return table.concat(self.segments)
end

function tabline:clear()
    self.segments = {}
end

function tabline:add(tab)
    local window = vim.api.nvim_tabpage_get_win(tab)
    local buffer = vim.api.nvim_win_get_buf(window)
    local name =  vim.api.nvim_buf_get_name(buffer)

    if string.find(name, 'term://') ~= nil then
        local command = api.fn.fnamemodify(name, ':p:t')

        self:append(' ' .. command:gsub('[^a-zA-Z]', ''))
    else
        name = api.fn.fnamemodify(name, ':p:t')

        if name == '' then
            self:append('No Name')
        else
            self:append(' ' .. name)
        end
    end

    self:append(' %#TabLine# ')
end

function tabline:get()
    local tabs = vim.api.nvim_list_tabpages()
    local current = vim.api.nvim_get_current_tabpage()

    self:clear()

    for _, tab in ipairs(tabs) do
        if tab == current then
            self:append('%#TabLineSel# ')
        else
            self:append('%#TabLineUnsel# ')
        end

        self:add(tab)
    end

    return self:build()
end

return tabline
