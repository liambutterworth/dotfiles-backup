return function()
    local config = require('lspconfig')
    local capabilities = api.lsp.make_capabilities()

    local function on_attach(client, buffer)
        local opts = { noremap = true, silent = true }

        api.buf.opt.set('omnifunc', 'v:lua.vim.lsp.omnifunc')

        api.buf.map.normal(buffer, {
            {
                'K',
                '<cmd>lua vim.lsp.buf.hover({ border = "single" })<cr>',
                { noremap = true, silent = true },
            },

            {
                '<c-]>',
                '<cmd>lua vim.lsp.buf.definition()<cr>',
                { noremap = true, silent = true },
            },

            {
                '[d',
                '<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>',
                { noremap = true, silent = true },
            },

            {
                ']d',
                '<cmd>lua vim.lsp.diagnostic.goto_next()<cr>',
                { noremap = true, silent = true },
            },

            {
                'gi',
                '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<cr>',
                { noremap = true, silent = true },
            },
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
