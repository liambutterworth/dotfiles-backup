local api = require('api')

function Statusline(state)
    local statusline = {}
    local branch = api.call.FugitiveHead()
    local buffer = api.utils.get_current_window()
    local errors = api.utils.get_lsp_error_count(buffer)
    local warnings = api.utils.get_lsp_warning_count(buffer)
    local separator = ' %#StatusLineSep# %#StatusLine# '

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
        table.insert(statusline, separator)
        table.insert(statusline, '%#StatusLineLn#%#StatusLine# %l/%L:%c')
        table.insert(statusline, separator)

        if (branch and #branch > 0) then
            local status = api.shell('git status')

            table.insert(statusline, '  ')

            if string.find(status, 'Changes not staged') then
                table.insert(statusline, '%#StatusLineBranchDirty#')
            elseif string.find(status, 'Changes to be committed') then
                table.insert(statusline, '%#StatusLineBranchCommit#')
            elseif string.find(status, 'Your branch is ahead') then
                table.insert(statusline, '%#StatusLineBranchAhead#')
            end

            table.insert(statusline, branch .. separator)
        end
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

api.cmd([[
augroup StatusLine
autocmd!
autocmd WinEnter,BufEnter * setlocal statusline=%!v:lua.Statusline('active')
autocmd WinLeave,BufLeave * setlocal statusline=%!v:lua.Statusline('inactive')
augroup END
]])
