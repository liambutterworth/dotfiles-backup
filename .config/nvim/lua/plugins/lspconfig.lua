local api = require('api')
local config = require('lspconfig')
local capabilities = api.lsp.protocol.make_client_capabilities()

local function on_attach(client, buffer)
    local opts = { noremap = true, silent = true }

    api.buffer.omnifunc = 'v:lua.vim.lsp.omnifunc'

    api.map.normal(buffer, 'K', '<cmd>lua vim.lsp.buf.hover({ border = "single" })<cr>', opts)
    api.map.normal(buffer, '<c-]>', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
    api.map.normal(buffer, '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>', opts)
    api.map.normal(buffer, ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<cr>', opts)
    api.map.normal(buffer, 'gi', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<cr>', opts)
    api.map.normal(buffer, 'gs', '<cmd>LspRestart<cr>', opts)
    api.map.normal(buffer, 'gS', '<cmd>LspStop<cr>', opts)
end

capabilities.textDocument.completion.completionItem.snippetSupport = true

capabilities.textDocument.completion.completionItem.resolveSupport = {
    properties = {
        'documentation',
        'detail',
        'additionalTextEdits',
    }
}

config.rust_analyzer.setup {
    capabilities = capabilities,
}

config.html.setup {
    capabilities = capabilities,
    on_attach = on_attach,
}

config.cssls.setup {
    capabilities = capabilities,
    on_attach = on_attach,
}

config.jsonls.setup {
    capabilities = capabilities,
    on_attach = on_attach,
}

config.vuels.setup {
    capabilities = capabilities,
    on_attach = on_attach,
}

config.intelephense.setup {
    capabilities = capabilities,
    on_attach = on_attach
}
