local has_lsp, lsp = pcall(require, 'lspconfig')
local has_treesitter, treesitter = pcall(require, 'nvim-treesitter.configs')

if has_lsp then
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

    lsp.intelephense.setup{
        on_attach = on_attach
    }

    lsp.vuels.setup{
        on_attach = on_attach
    }

    require('compe').setup {
        enabled = true;
        autocomplete = true;
        debug = false;
        min_length = 1;
        preselect = 'enable';
        throttle_time = 80;
        source_timeout = 200;
        resolve_timeout = 800;
        incomplete_delay = 400;
        max_abbr_width = 100;
        max_kind_width = 100;
        max_menu_width = 100;
        documentation = true;

        source = {
            path = true;
            buffer = true;
            calc = true;
            nvim_lsp = true;
            nvim_lua = true;
            vsnip = true;
            ultisnips = true;
        };
    }

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

    local t = function(str)
        return vim.api.nvim_replace_termcodes(str, true, true, true)
    end

    local check_back_space = function()
        local col = vim.fn.col('.') - 1
        return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
    end

    _G.tab_complete = function()
        if vim.fn.pumvisible() == 1 then
            return t "<c-n>"
        elseif vim.fn.call("vsnip#available", {1}) == 1 then
            return t "<plug>(vsnip-expand-or-jump)"
        elseif check_back_space() then
            return t "<tab>"
        else
            return vim.fn['compe#complete']()
        end
    end

    _G.s_tab_complete = function()
        if vim.fn.pumvisible() == 1 then
            return t "<c-p>"
        elseif vim.fn.call("vsnip#jumpable", {-1}) == 1 then
            return t "<plug>(vsnip-jump-prev)"
        else
            return t "<s-tab>"
        end
    end

    vim.api.nvim_set_keymap("i", "<cr>", "compe#confirm('<cr>')", { expr = true, silent = true })
    vim.api.nvim_set_keymap("i", "<tab>", "v:lua.tab_complete()", { expr = true })
    vim.api.nvim_set_keymap("s", "<tab>", "v:lua.tab_complete()", { expr = true })
    vim.api.nvim_set_keymap("i", "<s-tab>", "v:lua.s_tab_complete()", { expr = true })
    vim.api.nvim_set_keymap("s", "<s-tab>", "v:lua.s_tab_complete()", { expr = true })
end

if has_treesitter then
    require('nvim-autopairs').setup({
        check_ts = true,
    })

    require('nvim-autopairs.completion.compe').setup({
        map_cr = true,
        map_complete = true,
    })

    require('nvim-ts-autotag').setup()

    treesitter.setup {
        autopairs = { enable = true },
        autotag = { enable = true },
        highlight = { enable = true },
        indent = { enable = true },
    }
end
