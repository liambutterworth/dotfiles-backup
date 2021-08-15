return function()
    local utils = require('utils')
    local config = require('lspconfig')
    local capabilities = vim.lsp.protocol.make_client_capabilities()

    local function on_attach(client, buffer)
        local opts = { noremap = true, silent = true }

        vim.bo.omnifunc = 'v:lua.vim.lsp.omnifunc'

        utils.map.normal(buffer, 'K', '<cmd>lua vim.lsp.buf.hover({ border = "single" })<cr>', opts)
        utils.map.normal(buffer, '<c-]>', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
        utils.map.normal(buffer, '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>', opts)
        utils.map.normal(buffer, ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<cr>', opts)
        utils.map.normal(buffer, 'gi', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<cr>', opts)
        utils.map.normal(buffer, 'gs', '<cmd>LspRestart<cr>', opts)
        utils.map.normal(buffer, 'gS', '<cmd>LspStop<cr>', opts)
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
