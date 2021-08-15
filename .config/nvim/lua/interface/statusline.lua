local statusline = {
    segments = {},
}

function statusline:clear()
    self.segments = {}
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
    elseif vim.bo.modifiable then
        if vim.bo.modified then
            self:append('%#StatusLineModified# ')
            self:append('%#StatusLineModifiedSep#')
        else
            self:append('%#StatusLineUnmodified# ')
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
    local branch = vim.b.gitsigns_head or ''
    local changes = vim.b.gitsigns_status or ''

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
    local buffer = vim.fn.bufnr()

    if vim.lsp.diagnostic.get_count(buffer, 'Error') > 0 then
        self:append('%#StatusLineHasErrors#')
    elseif vim.lsp.diagnostic.get_count(buffer, 'Warnings') > 0 then
        self:append('%#StatusLineHasWarnings#')
    elseif vim.lsp.diagnostic.get_count(buffer, 'Information') > 0 then
        self:append('%#StatusLineHasInfo#')
    else
        self:append('%#StatusLineClean#')
    end

    self:append('  ')
end

function statusline:get(active)
    self:clear()
    self:add_file(active)

    if active then
        self:add_line_number()
        self:add_branch()
        self:add_diagnostics()
    end

    return table.concat(self.segments)
end

return statusline
