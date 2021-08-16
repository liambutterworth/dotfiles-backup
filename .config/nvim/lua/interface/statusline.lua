local statusline = {
    segments = {},
}

function statusline:clear()
    self.segments = {}
end

function statusline:concat()
    return table.concat(self.segments)
end

function statusline:append(segment)
    table.insert(self.segments, segment)
end

function statusline:add_separator()
    self:append('%#StatusLineSep# %#StatusLine#')
end

function statusline:add_file(active)
    if not active then
        self:append('%#StatusLineInactive# ')
        self:append('%#StatusLineInactiveSep#')
    elseif api.buf.opt.get('modifiable') then
        if api.buf.opt.get('modified') then
            self:append('%#StatusLineModified# ')
            self:append('%#StatusLineModifiedSep#')
        else
            self:append('%#StatusLineUnmodified#  ')
            self:append('%#StatusLineUnmodifiedSep#')
        end
    else
        self:append('%#StatusLineReadOnly# ')
        self:append('%#StatusLineReadOnlySep#')
    end

    self:append('%#StatusLine# %f%<%=')
end

function statusline:add_line_number()
    self:add_separator()
    self:append(' %#StatusLineIcon#%#StatusLine# %l/%L:%c ')
    self:add_separator()
end

function statusline:add_branch()
    local branch = api.buf.get('gitsigns_head', '')
    local changes = api.buf.get('gitsigns_status', '')

    if #branch > 0 then
        self:append('%#StatusLineIcon# %#StatusLine# ')

        if #changes > 0 then
            self:append('%#StatusLineBranchDirty#')
        else
            self:append('%#StatusLineBranchClean#')
        end

        self:append(branch .. ' %#StatusLine#')
        self:add_separator()
    end
end

function statusline:add_diagnostics()
    if api.lsp.get_error_count() > 0 then
        self:append('%#StatusLineHasErrors#')
    elseif api.lsp.get_warning_count() > 0 then
        self:append('%#StatusLineHasWarnings#')
    elseif api.lsp.get_info_count() > 0 then
        self:append('%#StatusLineHasInfo#')
    else
        self:append('%#StatusLineClean#')
    end

    self:append(' ● ')
end

function statusline:get(active)
    self:clear()
    self:add_file(active)

    if active then
        self:add_line_number()
        self:add_branch()
        self:add_diagnostics()
    end

    return self:concat(self.segments)
end

return statusline
