local tabline = {
    segments = {},
}

function tabline:clear()
    self.segments = {}
end

function tabline:concat()
    return table.concat(self.segments)
end

function tabline:append(segment)
    table.insert(self.segments, segment)
end

function tabline:add(tab)
    local name = api.tab.get_name(tab)

    if tab == api.tab.get_current() then
        self:append('%#TabLineSel# ')
    else
        self:append('%#TabLineUnsel# ')
    end

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
    local tabs = api.tab.get_list()

    self:clear()

    for _, tab in ipairs(tabs) do
        self:add(tab)
    end

    return self:concat()
end

return tabline
