local api = require('api')

function StatusLineFile(active)
    local widget = {}

    if state == 'inactive' then
        table.insert(widget, '%#StatusLineInactive# ')
        table.insert(widget, '%#StatusLineInactiveSep#')
    elseif api.buffer.modifiable then
        if api.buffer.modified then
            table.insert(widget, '%#StatusLineModified# ')
            table.insert(widget, '%#StatusLineModifiedSep#')
        else
            table.insert(widget, '%#StatusLineUnmodified# ')
            table.insert(widget, '%#StatusLineUnmodifiedSep#')
        end
    else
        table.insert(widget, '%#StatusLineReadOnly# ')
        table.insert(widget, '%#StatusLineReadOnlySep#')
    end

    table.insert(widget, '%#StatusLine# %f%<%=')

    return table.concat(widget)
end

function StatusLineNumber()
    return '%#StatusLineIcon#%#StatusLine# %l/%L:%c'
end

function StatusLineBranch()
    local widget = {}
    local branch = api.call.FugitiveHead()

    if (branch and #branch > 0) then
        local status = api.shell('git status')

        table.insert(widget, ' ')

        if string.find(status, 'Changes not staged') then
            table.insert(widget, '%#StatusLineBranchDirty#')
        elseif string.find(status, 'Changes to be committed') then
            table.insert(widget, '%#StatusLineBranchCommit#')
        elseif string.find(status, 'Your branch is ahead') then
            table.insert(widget, '%#StatusLineBranchAhead#')
        else
            table.insert(widget, '%#StatusLineBranchClean#')
        end

        table.insert(widget, branch)
    end

    return table.concat(widget)
end

function StatusLineLsp()
    local widget = {}
    local buffer = api.utils.get_current_window()

    if api.utils.get_lsp_error_count(buffer) > 0 then
        table.insert(widget, '%#StatusLineHasErrors#')
    elseif api.utils.get_lsp_warning_count(buffer) > 0 then
        table.insert(widget, '%#StatusLineHasWarnings#')
    elseif api.utils.get_lsp_info_count(buffer) > 0 then
        table.insert(widget, '%#StatusLineHasInfo#')
    else
        table.insert(widget, '%#StatusLineClean#')
    end

    table.insert(widget, ' ')

    return table.concat(widget)
end

function StatusLine(state)
    local statusline = {}
    local separator = ' %#StatusLineSep# %#StatusLine# '

    table.insert(statusline, StatusLineFile(state == 'active'))

    if state == 'active' then
        table.insert(statusline, separator .. StatusLineNumber())
        table.insert(statusline, separator .. StatusLineBranch() .. separator)
    end

    table.insert(statusline, StatusLineLsp())

    return table.concat(statusline)
end

api.cmd([[
augroup StatusLine
autocmd!
autocmd WinEnter,BufEnter * setlocal statusline=%!v:lua.StatusLine('active')
autocmd WinLeave,BufLeave * setlocal statusline=%!v:lua.StatusLine('inactive')
augroup END
]])
