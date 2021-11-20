return function()
    local config = require('lspconfig')
    local capabilities = vim.lsp.protocol.make_client_capabilities()

    local function on_attach(client, buffer)
        vim.bo.omnifunc = 'v:lua.vim.lsp.omnifunc'

        vim.api.nvim_buf_set_keymap(buffer, 'n', 'K', '<cmd>lua vim.lsp.buf.hover({ border = "single" })<cr>', { silent = true })
        vim.api.nvim_buf_set_keymap(buffer, 'n', '<c-]>', '<cmd>lua vim.lsp.buf.definition()<cr>', { silent = true })
        vim.api.nvim_buf_set_keymap(buffer, 'n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>', { silent = true })
        vim.api.nvim_buf_set_keymap(buffer, 'n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<cr>', { silent = true })
        vim.api.nvim_buf_set_keymap(buffer, 'n', 'gi', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<cr>', { silent = true })
    end

    local signs = {
        Error = '●',
        Warn = '●',
        Hint = '●',
        Info = '●',
    }

    for type, icon in pairs(signs) do
        local highlight = "DiagnosticSign" .. type

        vim.fn.sign_define(highlight, {
            text = icon,
            texthl = highlight,
            numhl = '',
        })
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
end
