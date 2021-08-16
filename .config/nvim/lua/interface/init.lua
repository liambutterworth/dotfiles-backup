local statusline = require('interface.statusline')
local tabline = require('interface.tabline')

function GetTabLine()
    return tabline:get()
end

function GetActiveStatusLine()
    return statusline:active()
end

function GetInactiveStatusLine()
    return statusline:inactive()
end

api.opt.set('tabline',  '%!v:lua.GetTabLine()')

api.cmd([[
    augroup StatusLine
        autocmd!
        autocmd WinEnter,BufEnter * setlocal statusline=%!v:lua.GetActiveStatusLine()
        autocmd WinLeave,BufLeave * setlocal statusline=%!v:lua.GetInactiveStatusLine(0)
    augroup END
]])
