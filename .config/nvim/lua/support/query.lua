local curl = require('support.curl')

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

function query:get_buffer_string()
    local lines = vim.fn.getline(1, '$')
    local string = vim.fn.join(lines)

    return vim.fn.substitute(string, ' ', '', 'g')
end

function query:es(name)
    local config = self:get_config().es[name]
    local curl = curl:new()

    curl:set_url(config.host .. '/' .. config.index .. '/_search?pretty')
    curl:set_data(self:get_buffer_string())
    curl:set_header('Content-Type', 'application/json')
    curl:set_output(self.results_file)
    curl:execute()
end

return query
