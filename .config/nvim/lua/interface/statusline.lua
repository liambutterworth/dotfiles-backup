local api = require('api')

function Statusline(state)
    local statusline = {}
    local branch = api.call.FugitiveHead()
    local buffer = api.utils.get_current_window()
    local errors = api.utils.get_lsp_error_count(buffer)
    local warnings = api.utils.get_lsp_warning_count(buffer)
    local separator = '%#StatusLineSep# │ %#StatusLine#'

    if state == 'inactive' then
        table.insert(statusline, '%#StatusLineInactive# ')
        table.insert(statusline, '%#StatusLineInactiveSep#')
    elseif api.buffer.modifiable then
        if api.buffer.modified then
            table.insert(statusline, '%#StatusLineModified# ')
            table.insert(statusline, '%#StatusLineModifiedSep#')
        else
            table.insert(statusline, '%#StatusLineUnmodified# ')
            table.insert(statusline, '%#StatusLineUnmodifiedSep#')
        end
    else
        table.insert(statusline, '%#StatusLineReadOnly# ')
        table.insert(statusline, '%#StatusLineReadOnlySep#')
    end

    table.insert(statusline, '%#StatusLine# %f%<%=')

    if state == 'active' then
        table.insert(statusline, '%#StatusLineLn#%#StatusLine# %l/%L:%c')

        if (branch and #branch > 0) then
            table.insert(statusline, separator .. ' %#StatusLineBranch#' .. branch)
        end

        table.insert(statusline, separator)
    end

    if errors > 0 then
        table.insert(statusline, '%#StatusLineHasErrors#')
    elseif warnings > 0 then
        table.insert(statusline, '%#StatusLineHasWarnings#')
    else
        table.insert(statusline, '%#StatusLineClean#')
    end

    table.insert(statusline, ' ')

    return table.concat(statusline)
end

api.exec([[
augroup StatusLine
autocmd!
autocmd WinEnter,BufEnter * setlocal statusline=%!v:lua.Statusline('active')
autocmd WinLeave,BufLeave * setlocal statusline=%!v:lua.Statusline('inactive')
augroup END
]], false)
