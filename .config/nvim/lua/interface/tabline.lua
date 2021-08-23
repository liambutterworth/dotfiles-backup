local has_devicons, devicons = pcall(require, 'nvim-web-devicons')

local tabline = {
    segments = {},

    highlights = {
        active = '%#TabLineActive#',
        active_clean = '%#TabLineActiveClean#',
        active_has_errors = '%#TabLineActiveHasErrors#',
        active_has_information = '%#TabLineActiveHasInformation#',
        active_has_warnings = '%#TabLineActiveHasWarnings#',
        active_icon_modified = '%#TabLineActiveIconModified#',
        active_icon_readonly = '%#TabLineActiveIconReadOnly#',
        active_icon_terminal = '%#TabLineActiveIconTerminal#',
        active_icon_unmodified = '%#TabLineActiveIconUnmodified#',
        inactive = '%#TabLineInactive#',
        inactive_clean = '%#TabLineInactiveClean#',
        inactive_has_errors = '%#TabLineInactiveHasErrors#',
        inactive_has_information = '%#TabLineInactiveHasInformation#',
        inactive_has_warnings = '%#TabLineInactiveHasWarnings#',
        inactive_icon_modified = '%#TabLineInactiveIconModified#',
        inactive_icon_readonly = '%#TabLineTerminalActiveIconReadOnly#',
        inactive_icon_terminal = '%#TabLineTerminalActiveIconTerminal#',
        inactive_icon_unmodified = '%#TabLineTerminalActiveIconUnmodified#',
        normal = '%#TabLine#',
    },
}

function tabline:add(segment)
    table.insert(self.segments, segment)
end

function tabline:build()
    return table.concat(self.segments)
end

function tabline:clear()
    self.segments = {}
end

function tabline:add_space()
    self:add(' ')
end

function tabline:add_tab(tab, is_active)
    local window = vim.api.nvim_tabpage_get_win(tab)
    local buffer = vim.api.nvim_win_get_buf(window)
    local filename =  vim.api.nvim_buf_get_name(buffer)
    local is_terminal = string.find(filename, 'term://') ~= nil
    local name = vim.fn.fnamemodify(filename, ':p:t')
    local ext = vim.fn.fnamemodify(filename, ':e')
    local icon = is_terminal and '' or ''

    if has_devicons and not is_terminal then
        icon = devicons.get_icon(name, ext) or icon
    end

    if is_active then
        if is_terminal then
            self:add(self.highlights.active_icon_terminal)
        elseif vim.bo[buffer].readonly then
            self:add(self.highlights.active_icon_readonly)
        elseif vim.bo[buffer].modified then
            self:add(self.highlights.active_icon_modified)
        else
            self:add(self.highlights.active_icon_unmodified)
        end

        self:add_space()
        self:add(icon)
        self:add(self.highlights.active)
        self:add_space()
        self:add(name)
        self:add_space()

        if vim.lsp.diagnostic.get_count(buffer, 'Error') > 0 then
            self:add(self.highlights.active_has_errors)
        elseif vim.lsp.diagnostic.get_count(buffer, 'Warnings') > 0 then
            self:add(self.highlights.active_has_errors)
        elseif vim.lsp.diagnostic.get_count(buffer, 'Information') > 0 then
            self:add(self.highlights.active_has_errors)
        else
            self:add(self.highlights.active_clean)
        end

        self:add('●')
        self:add(self.highlights.active)
        self:add_space()
    else
        if is_terminal then
            self:add(self.highlights.inactive_icon_terminal)
        elseif vim.bo[buffer].readonly then
            self:add(self.highlights.inactive_icon_readonly)
        elseif vim.bo[buffer].modified then
            self:add(self.highlights.inactive_icon_modified)
        else
            self:add(self.highlights.inactive_icon_unmodified)
        end

        self:add_space()
        self:add(icon)
        self:add(self.highlights.inactive)
        self:add_space()
        self:add(name)
        self:add_space()

        if vim.lsp.diagnostic.get_count(buffer, 'Error') > 0 then
            self:add(self.highlights.inactive_has_errors)
        elseif vim.lsp.diagnostic.get_count(buffer, 'Warnings') > 0 then
            self:add(self.highlights.inactive_has_errors)
        elseif vim.lsp.diagnostic.get_count(buffer, 'Information') > 0 then
            self:add(self.highlights.inactive_has_errors)
        else
            self:add(self.highlights.inactive_clean)
        end

        self:add('●')
        self:add(self.highlights.inactive)
        self:add_space()
    end
end

function tabline:get()
    local tabs = vim.api.nvim_list_tabpages()
    local current = vim.api.nvim_get_current_tabpage()

    self:clear()

    for _, tab in ipairs(tabs) do
        self:add_tab(tab, tab == current)
    end

    self:add(self.highlights.normal)

    return self:build()
end

return tabline
