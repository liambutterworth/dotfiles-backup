local has_devicons, devicons = pcall(require, 'nvim-web-devicons')

local statusline = {
    is_active = false,
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

function statusline:highlight(name)
    self:add('%#StatusLine' .. (name or '') .. '#')
end

function statusline:add(segment)
    table.insert(self.segments, segment)
end

function statusline:add_separator()
    self:highlight('Separator')
    self:add(' ')
    self:highlight()
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

    if not self.is_active then
        self:highlight('Inactive')
    elseif vim.bo[self.buffer].readonly then
        self:highlight('ReadOnly')
    elseif vim.bo[self.buffer].modified then
        self:highlight('Modified')
    else
        self:highlight('Unmodified')
    end

    self:add_space()
    self:add(icon)
    self:add_space()
    self:highlight()
    self:add_space()
    self:add('%f%<%=')
end

function statusline:add_line_number()
    self:add_separator()
    self:add_space()
    self:highlight('Icon')
    self:add('並')
    self:highlight()
    self:add('%l/%L:%c')
    self:add_space()
    self:add_separator()
end

function statusline:add_branch()
    if vim.b.gitsigns_head then
        self:highlight('Icon')
        self:add_space()
        self:add('')
        self:highlight()
        self:add_space()

        if #vim.b.gitsigns_status > 0 then
            self:highlight('Dirty')
        else
            self:highlight('Clean')
        end

        self:add(vim.b.gitsigns_head)
        self:add_space()
        self:highlight()
        self:add_separator()
    end
end

function statusline:add_diagnostics()
    if vim.lsp.diagnostic.get_count(self.buffer, 'Error') > 0 then
        self:highlight('HasErrors')
    elseif vim.lsp.diagnostic.get_count(self.buffer, 'Information') > 0 then
        self:highlight('HasInformation')
    elseif vim.lsp.diagnostic.get_count(self.buffer, 'Warnings') > 0 then
        self:highlight('HasWarnings')
    else
        self:highlight('Clean')
    end

    self:add_space()
    self:add('●')
    self:add_space()
end

function statusline:get()
    self.is_active = vim.w.is_active
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
