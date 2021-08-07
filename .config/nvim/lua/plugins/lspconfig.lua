local lsp = require('lspconfig')

local on_attach = function(client, bufnr)
    local function buf_set_keymap(...)
        vim.api.nvim_buf_set_keymap(bufnr, ...)
    end

    local function buf_set_option(...)
        vim.api.nvim_buf_set_option(bufnr, ...)
    end

    local opts = { noremap = true, silent = true }

    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
    buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover({ border = "single" })<cr>', opts)
    buf_set_keymap('n', '<c-]>', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
    buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<cr>', opts)
    buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
    buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities.textDocument.completion.completionItem.snippetSupport = true

capabilities.textDocument.completion.completionItem.resolveSupport = {
    properties = {
        'documentation',
        'detail',
        'additionalTextEdits',
    }
}

lsp.rust_analyzer.setup {
    capabilities = capabilities,
}

lsp.intelephense.setup{
    on_attach = on_attach
}

lsp.vuels.setup{
    on_attach = on_attach
}


