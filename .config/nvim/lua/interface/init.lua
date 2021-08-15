local statusline = require('interface.statusline')
local tabline = require('interface.tabline')

function Tabline()
    return tabline:get()
end

function StatusLine(state)
    return statusline:get(state == 1)
end

vim.opt.tabline = '%!v:lua.Tabline()'

vim.cmd([[
    augroup StatusLine
        autocmd!
        autocmd WinEnter,BufEnter * setlocal statusline=%!v:lua.StatusLine(1)
        autocmd WinLeave,BufLeave * setlocal statusline=%!v:lua.StatusLine(0)
    augroup END
]])