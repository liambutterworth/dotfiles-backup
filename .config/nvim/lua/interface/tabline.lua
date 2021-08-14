local api = require('api')

function Tabname(number)
    local name = api.utils.get_tab_name(number)

    if string.find(name, 'term://') ~= nil then
        local command = api.call.fnamemodify(name, ':p:t')

        return ' ' .. command:gsub('[^a-zA-Z]', '')
    end

    name = api.call.fnamemodify(name, ':p:t')

    if name == '' then
        return 'No Name'
    end

    return ' ' .. name
end

function Tabline()
    local tabline = {}
    local tabs = api.utils.get_tab_list()
    local current = api.utils.get_current_tab()

    for index, tab in ipairs(tabs) do
        local name = Tabname(tab)

        if tab == current then
            table.insert(tabline, '%#TabLineSel# ' .. name .. ' ')
        else
            table.insert(tabline, '%#TabLineUnsel# ' .. name .. ' ')
        end

        table.insert(tabline, '%#TabLine# ')
    end

    return table.concat(tabline)
end

api.option.tabline = '%!v:lua.Tabline()'
