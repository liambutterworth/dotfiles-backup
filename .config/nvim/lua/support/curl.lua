local curl = {
    command = 'curl',
    options = { 's' },
    url = nil,
    data = nil,
    headers = {},
    output = nil,
}

function curl:new(options)
    options = options or {}

    setmetatable(options, self)

    self.__index = self

    return options
end

function curl:set_method(method)
    self.method = method
end

function curl:set_url(url)
    self.url = url
end

function curl:set_header(key, value)
    self.headers[key] = value
end

function curl:set_headers(headers)
    for key, value in pairs(headers) do
        self:set_header(key, value)
    end
end

function curl:set_data(data)
    self.data = data
end

function curl:set_output(output)
    self.output = vim.fn.expand(output)
end

function curl:build()
    local command = { self.command }

    if #self.options > 0 then
        table.insert(command, '-' .. table.concat(self.options))
    end

    if self.method then
        table.insert(command, '-X ' .. method)
    end

    if self.url then
        table.insert(command, "'" .. self.url .. "'")
    end

    for key, value in pairs(self.headers or {}) do
        table.insert(command, "-H '" .. key .. ": " .. value .. "'")
    end

    if self.data then
        table.insert(command, "-d '" .. self.data .. "'")
    end

    if self.output then
        table.insert(command, '-o ' .. self.output)
    end

    return table.concat(command, ' ')
end

function curl:execute()
    return vim.fn.execute('!' .. self:build())
end

return curl
