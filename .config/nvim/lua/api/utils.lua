local utils = {}

utils.cmd = function(code)
    vim.cmd(code)
end

utils.escape = function(string)
    return vim.api.nvim_replace_termcodes(string, true, true, true)
end

utils.check_backspace = function()
    local col = vim.fn.col('.') - 1

    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

utils.json_decode = function(json)
    return vim.fn.json_decode(json)
end

utils.json_decode_file = function(file)
    return utils.json_decode(vim.fn.readfile(vim.fn.expand(file)))
end

utils.json_decode_buffer = function()
    return utils.json_decode_file(vim.fn.expand('%'))
end

return utils
