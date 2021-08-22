local has_devicons, devicons = pcall(require, 'nvim-web-devicons')

local statusline = {
    active = false,
    buffer = nil,
    window = nil,
    segments = {},

    highlights = {
        clean = '%#StatusLineClean#',
        dirty = '%#StatusLineDirty#',
        icon = '%#StatusLineIcon#',
        inactive = '%#StatusLineInactive#',
        has_errors = '%#StatusLineHasErrors#',
        has_information = '%#StatusLineHasInformation#',
        has_warnings = '%#StatusLineHasWarnings#',
        modified = '%#StatusLineModified#',
        normal = '%#StatusLine#',
        readonly = '%#StatusLineReadOnly#',
        separator = '%#StatusLineSeparator#',
        unmodified = '%#StatusLineUnmodified#',
    },
}

function statusline:clear()
    self.segments = {}
end

function statusline:build()
    return table.concat(self.segments)
end

function statusline:add(segment)
    table.insert(self.segments, segment)
end

function statusline:add_separator()
    self:add(self.highlights.separator)
    self:add(' ')
    self:add(self.highlights.normal)
end

function statusline:add_space()
    self:add(' ')
end

function statusline:add_file()
    local icon = ''

    if has_devicons then
        local name = vim.fn.expand('%:p:h:t')
        local ext = vim.fn.expand('%:e')

        icon = devicons.get_icon(name, ext) or icon
    end

    if not self.active then
        self:add(self.highlights.inactive)
    elseif vim.bo[self.buffer].readonly then
        self:add(self.highlights.readonly)
    elseif vim.bo[self.buffer].modified then
        self:add(self.highlights.modified)
    else
        self:add(self.highlights.unmodified)
    end

    self:add_space()
    self:add(icon)
    self:add_space()
    self:add(self.highlights.normal)
    self:add_space()
    self:add('%f%<%=')
end

function statusline:add_line_number()
    self:add_separator()
    self:add_space()
    self:add(self.highlights.icon)
    self:add('並')
    self:add(self.highlights.normal)
    self:add('%l/%L:%c')
    self:add_space()
    self:add_separator()
end

function statusline:add_branch()
    if vim.b.gitsigns_head then
        self:add(self.highlights.icon)
        self:add_space()
        self:add('')
        self:add(self.highlights.normal)
        self:add_space()

        if #vim.b.gitsigns_status > 0 then
            self:add(self.highlights.dirty)
        else
            self:add(self.highlights.clean)
        end

        self:add(vim.b.gitsigns_head)
        self:add_space()
        self:add(self.highlights.normal)
        self:add_separator()
    end
end

function statusline:add_diagnostics()
    if vim.lsp.diagnostic.get_count(self.buffer, 'Error') > 0 then
        self:add(self.highlights.has_errors)
    elseif vim.lsp.diagnostic.get_count(self.buffer, 'Warnings') > 0 then
        self:add(self.highlights.has_errors)
    elseif vim.lsp.diagnostic.get_count(self.buffer, 'Information') > 0 then
        self:add(self.highlights.has_errors)
    else
        self:add(self.highlights.clean)
    end

    self:add_space()
    self:add('●')
    self:add_space()
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
