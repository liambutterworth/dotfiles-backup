local query = {
    config_file = '~/.local/share/nvim-query/config.json',
    results_file = '~/.local/share/nvim-query/results.json',
}

function query:open_config()
    local file = vim.fn.expand(self.config_file)
    local directory = vim.fn.fnamemodify(file, ':p:h')

    vim.fn.mkdir(directory, 'p')
    vim.fn.execute('edit ' .. file)
end

function query:get_config()
    if self.config == nil then
        local file = vim.fn.expand('~/.local/share/nvim-query/config.json')
        local json = vim.fn.readfile(file)

        self.config = vim.fn.json_decode(json)
    end

    return self.config
end

return query
