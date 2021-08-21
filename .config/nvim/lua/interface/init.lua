local statusline = require('interface.statusline')
local tabline = require('interface.tabline')

function GetTabLine()
    return tabline:get()
end

function GetStatusLine(window)
    api.win.set('is_active', window == api.win.get_current())

    return statusline:get()
end

function BuildStatusLine(number)
    return '%{%v:lua.GetStatusLine(' .. api.fn.winnr() .. ')%}'
end

api.opt.set('tabline',  '%!v:lua.GetTabLine()')
api.opt.set('statusline', '%!v:lua.BuildStatusLine(winnr())')
