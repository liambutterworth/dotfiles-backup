local statusline = {
    active = false,
    buffer = nil,
    window = nil,
    segments = {},
}

function statusline:clear()
    self.segments = {}
end

function statusline:build()
    return table.concat(self.segments)
end

function statusline:append(segment)
    table.insert(self.segments, segment)
end

function statusline:add_separator()
    self:append('%#StatusLineSep# %#StatusLineNormal#')
end

function statusline:add_file()
    local icon = '  '

    if not self.active then
        self:append('%#StatusLineInactive#' .. icon)
    elseif vim.bo.modifiable then
        if vim.bo.modified then
            self:append('%#StatusLineModified#' .. icon)
        else
            self:append('%#StatusLineUnmodified#' .. icon)
        end
    else
        self:append('%#StatusLineReadOnly#' .. icon)
    end

    self:append('%#StatusLineNormal# %f%<%=')
end

function statusline:add_line_number()
    self:add_separator()
    self:append(' %#StatusLineIcon#並%#StatusLineNormal#%l/%L:%c ')
    self:add_separator()
end

function statusline:add_branch()
    if vim.b.gitsigns_head then
        self:append('%#StatusLineIcon# %#StatusLineNormal# ')

        if #vim.b.gitsigns_status > 0 then
            self:append('%#StatusLineBranchDirty#')
        else
            self:append('%#StatusLineBranchClean#')
        end

        self:append(vim.b.gitsigns_head .. ' %#StatusLineNormal#')
        self:add_separator()
    end
end

function statusline:add_diagnostics()
    if vim.lsp.diagnostic.get_count(self.buffer, 'Error') > 0 then
        self:append('%#StatusLineHasErrors#')
    elseif vim.lsp.diagnostic.get_count(self.buffer, 'Warnings') > 0 then
        self:append('%#StatusLineHasWarnings#')
    elseif vim.lsp.diagnostic.get_count(self.buffer, 'Information') > 0 then
        self:append('%#StatusLineHasInfo#')
    else
        self:append('%#StatusLineClean#')
    end

    self:append(' ● ')
end

function statusline:get()
    self.active = vim.w.is_active
    self.window = vim.fn.winnr()
    self.buffer = vim.fn.winbufnr(self.window)

    self:clear()
    self:add_file()
    self:add_line_number()
    self:add_branch()
    self:add_diagnostics()

    return self:build()
end

return statusline
