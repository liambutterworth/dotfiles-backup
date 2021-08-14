local api = require('api')

function Tabname(number)
    local name = api.tab.get_name(number)

    if string.find(name, 'term://') ~= nil then
        return ' ' .. api.call.fnamemodify(name, ':p:t')
    end

    name = api.call.fnamemodify(name, ':p:t')

    if name == '' then
        return 'No Name'
    end

    return name
end

function Tabline()
    local tabline = {}
    local tabs = api.tab.get_list()
    local current = api.tab.get_current()
    local separator = '%#TabLineSeparator#'
    local selected = '%#TabLineSel#'
    local unselected = '%#TabLine#'
    local space = ' '

    for index, tab in ipairs(tabs) do
        local name = Tabname(tab)

        table.insert(tabline, separator .. space)

        if tab == current then
            table.insert(tabline, selected .. space .. name)
        else
            table.insert(tabline, unselected .. space .. name)
        end

        table.insert(tabline, space .. separator)
    end

    return table.concat(tabline)
end

api.option.tabline = '%!v:lua.Tabline()'
