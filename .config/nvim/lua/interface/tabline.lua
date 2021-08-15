local tabline = {
    segments = {}
}

function tabline:clear()
    self.segments = {}
end

function tabline:append(segment)
    table.insert(self.segments, segment)
end

function tabline:get()
    local tabs = vim.api.nvim_list_tabpages()
    local current = vim.api.nvim_get_current_tabpage()

    self:clear()

    for index, tab in ipairs(tabs) do
        local window = vim.api.nvim_tabpage_get_win(index)
        local buffer = vim.api.nvim_win_get_buf(window)
        local name = vim.api.nvim_buf_get_name(buffer)

        if tab == current then
            self:append('%#TabLineSel# ')
        else
            self:append('%#TabLineUnsel# ')
        end

        if string.find(name, 'term://') ~= nil then
            local command = vim.fn.fnamemodify(name, ':p:t')

            self:append(' ' .. command:gsub('[^a-zA-Z]', ''))
        else
            name = vim.fn.fnamemodify(name, ':p:t')

            if name == '' then
                self:append('No Name')
            else
                self:append(' ' .. name)
            end
        end

        self:append(' %#TabLine# ')
    end

    return table.concat(self.segments)
end

return tabline
