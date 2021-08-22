local statusline = require('interface.statusline')
local tabline = require('interface.tabline')

vim.o.statusline = '%!v:lua.BuildStatusLine(winnr())'
vim.o.tabline = '%!v:lua.GetTabLine()'

function BuildStatusLine(number)
    return '%{%v:lua.GetStatusLine(' .. vim.fn.winnr() .. ')%}'
end

function GetStatusLine(window)
    vim.w.is_active = window == vim.fn.winnr()

    return statusline:get()
end

function GetTabLine()
    return tabline:get()
end

vim.cmd('colorscheme custom')
