local has_devicons, devicons = pcall(require, 'nvim-web-devicons')

local tabline = {
    segments = {},
}

function tabline:clear()
    self.segments = {}
end

function tabline:build()
    return table.concat(self.segments)
end

function tabline:add(segment)
    table.insert(self.segments, segment)
end

function tabline:highlight(name)
    self:add('%#TabLine' .. (name or '') .. '#')
end

function tabline:add_space()
    self:add(' ')
end

function tabline:add_tab(tab, is_active)
    local window = vim.api.nvim_tabpage_get_win(tab)
    local buffer = vim.api.nvim_win_get_buf(window)
    local filename =  vim.api.nvim_buf_get_name(buffer)
    local name = vim.fn.fnamemodify(filename, ':p:t')
    local extension = vim.fn.fnamemodify(filename, ':e')
    local is_terminal = string.find(filename, 'term://') ~= nil
    local icon = is_terminal and '' or ''

    if has_devicons and not is_terminal then
        icon = devicons.get_icon(name, extension) or icon
    end

    local function highlight(name)
        local state = is_active and 'Active' or 'Inactive'

        return self:highlight(state .. (name or ''))
    end

    if is_terminal then
        self:add(highlight('IconTerminal'))
    elseif vim.bo[buffer].readonly then
        self:add(highlight('IconReadOnly'))
    elseif vim.bo[buffer].modified then
        self:add(highlight('IconModified'))
    else
        self:add(highlight('IconUnmodified'))
    end

    if name == '' then
        name = 'No Name'
    end

    self:add_space()
    self:add(icon)
    self:add(highlight())
    self:add_space()
    self:add(name)
    self:add_space()

    if vim.lsp.diagnostic.get_count(buffer, 'Error') > 0 then
        self:add(highlight('HasErrors'))
    elseif vim.lsp.diagnostic.get_count(buffer, 'Information') > 0 then
        self:add(highlight('HasInformation'))
    elseif vim.lsp.diagnostic.get_count(buffer, 'Warnings') > 0 then
        self:add(highlight('HasWarnings'))
    else
        self:add(highlight('Clean'))
    end

    self:add('●')
    self:add(highlight())
    self:add_space()
end

function tabline:get()
    local tabs = vim.api.nvim_list_tabpages()
    local current = vim.api.nvim_get_current_tabpage()

    self:clear()

    for _, tab in ipairs(tabs) do
        self:add_tab(tab, tab == current)
    end

    self:highlight()

    return self:build()
end

return tabline
