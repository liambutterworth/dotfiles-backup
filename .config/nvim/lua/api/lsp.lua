local lsp = {}

lsp.make_capabilities = function()
    return vim.lsp.protocol.make_client_capabilities()
end

lsp.get_error_count = function(buffer)
    return vim.lsp.diagnostic.get_count(buffer or 0, 'Error')
end

lsp.get_warning_count = function(buffer)
    return vim.lsp.diagnostic.get_count(buffer or 0, 'Warnings')
end

lsp.get_info_count = function(buffer)
    return vim.lsp.diagnostic.get_count(buffer or 0, 'Information')
end

return lsp
