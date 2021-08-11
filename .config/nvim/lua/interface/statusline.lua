local api = require('api')

function Statusline(state)
    local statusline = {}
    local branch = api.call.FugitiveHead()

    table.insert(statusline, ' %f')

    if (api.buffer.modified) then
        table.insert(statusline, ' + ')
    end

    if (api.buffer.readonly) then
        table.insert(statusline, ' Read Only ')
    end

    if (branch and #branch > 0) then
        table.insert(statusline, '  ' .. branch)
    end

    table.insert(statusline, '%=%{&ff} %{&ft} %{&fenc} %p%% %l,%c ')

    return table.concat(statusline)
end

api.exec([[
augroup StatusLine
autocmd!
autocmd WinEnter,BufEnter * setlocal statusline=%!v:lua.Statusline('active')
autocmd WinLeave,BufLeave * setlocal statusline=%!v:lua.Statusline('inactive')
augroup END
]], false)
