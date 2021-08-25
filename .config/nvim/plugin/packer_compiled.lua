-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/liambutterworth/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/liambutterworth/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/liambutterworth/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/liambutterworth/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/liambutterworth/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["nvim-compe"] = {
    config = { "\27LJ\2\nB\0\0\2\0\3\1\n6\0\0\0009\0\1\0009\0\2\0B\0\1\2\b\0\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\15pumvisible\afn\bvim\2F\0\1\a\0\3\0\b6\1\0\0009\1\1\0019\1\2\1\18\3\0\0+\4\2\0+\5\2\0+\6\2\0D\1\5\0\27nvim_replace_termcodes\bapi\bvim´\1\0\0\a\0\b\2 6\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\23\0\0\0\t\0\1\0X\1\3Ä+\1\2\0L\1\2\0X\1\20Ä6\1\0\0009\1\1\0019\1\4\1'\3\3\0B\1\2\2\18\4\1\0009\2\5\1\18\5\0\0\18\6\0\0B\2\4\2\18\5\1\0009\3\6\1'\6\a\0B\3\3\2\v\3\0\0X\3\2Ä+\3\1\0X\4\1Ä+\3\2\0L\3\2\0K\0\1\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0É\1\0\0\3\3\5\0\21-\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\1\0'\2\0\0D\0\2\0X\0\fÄ-\0\2\0B\0\1\2\15\0\0\0X\1\4Ä-\0\1\0'\2\1\0D\0\2\0X\0\4Ä6\0\2\0009\0\3\0009\0\4\0D\0\1\0K\0\1\0\1¿\2¿\3¿\19compe#complete\afn\bvim\n<tab>\n<c-n>I\0\0\3\2\2\0\f-\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\1\0'\2\0\0D\0\2\0X\0\3Ä-\0\1\0'\2\1\0D\0\2\0K\0\1\0\1¿\2¿\f<s-tab>\n<c-p>¯\5\1\0\n\0&\0Q6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\3B\1\2\0013\1\6\0003\2\a\0003\3\b\0003\4\t\0007\4\n\0003\4\v\0007\4\f\0006\4\r\0009\4\14\0049\4\15\4'\6\16\0'\a\17\0'\b\18\0005\t\19\0B\4\5\0016\4\r\0009\4\14\0049\4\15\4'\6\16\0'\a\20\0'\b\21\0005\t\22\0B\4\5\0016\4\r\0009\4\14\0049\4\15\4'\6\16\0'\a\23\0'\b\24\0005\t\25\0B\4\5\0016\4\r\0009\4\14\0049\4\15\4'\6\16\0'\a\26\0'\b\27\0005\t\28\0B\4\5\0016\4\r\0009\4\14\0049\4\15\4'\6\16\0'\a\29\0'\b\30\0005\t\31\0B\4\5\0016\4\r\0009\4\14\0049\4\15\4'\6\16\0'\a \0'\b!\0005\t\"\0B\4\5\0016\4\r\0009\4\14\0049\4\15\4'\6#\0'\a\29\0'\b\30\0005\t$\0B\4\5\0016\4\r\0009\4\14\0049\4\15\4'\6#\0'\a \0'\b!\0005\t%\0B\4\5\0012\0\0ÄK\0\1\0\1\0\1\texpr\2\1\0\1\texpr\2\6s\1\0\1\texpr\2\27v:lua.s_tab_complete()\f<s-tab>\1\0\1\texpr\2\25v:lua.tab_complete()\n<tab>\1\0\2\texpr\2\vsilent\2\"compe#scroll({ 'delta': -4 })\n<c-b>\1\0\2\texpr\2\vsilent\2\"compe#scroll({ 'delta': +4 })\n<c-f>\1\0\2\texpr\2\vsilent\2\25compe#close('<c-e>')\n<c-e>\1\0\2\texpr\2\vsilent\2\26compe#confirm('<cr>')\t<cr>\6i\20nvim_set_keymap\bapi\bvim\19s_tab_complete\0\17tab_complete\0\0\0\0\vsource\1\0\0\1\0\6\tpath\2\nvsnip\2\rnvim_lua\2\rnvim_lsp\2\tcalc\2\vbuffer\2\nsetup\ncompe\frequire\0" },
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nƒ\4\0\2\t\0\22\00026\2\0\0009\2\1\2'\3\3\0=\3\2\0026\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\a\0'\a\b\0005\b\t\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\n\0'\a\v\0005\b\f\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\r\0'\a\14\0005\b\15\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\16\0'\a\17\0005\b\18\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\19\0'\a\20\0005\b\21\0B\2\6\1K\0\1\0\1\0\1\vsilent\2<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<cr>\agi\1\0\1\vsilent\0020<cmd>lua vim.lsp.diagnostic.goto_next()<cr>\a]d\1\0\1\vsilent\0020<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>\a[d\1\0\1\vsilent\2*<cmd>lua vim.lsp.buf.definition()<cr>\n<c-]>\1\0\1\vsilent\2:<cmd>lua vim.lsp.buf.hover({ border = \"single\" })<cr>\6K\6n\24nvim_buf_set_keymap\bapi\27v:lua.vim.lsp.omnifunc\romnifunc\abo\bvim¬\5\1\0\14\0&\0K6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\0019\1\5\1B\1\1\0023\2\6\0005\3\a\0006\4\b\0\18\6\3\0B\4\2\4H\a\vÄ'\t\t\0\18\n\a\0&\t\n\t6\n\2\0009\n\n\n9\n\v\n\18\f\t\0005\r\f\0=\b\r\r=\t\14\rB\n\3\1F\a\3\3R\aÛ9\4\15\0019\4\16\0049\4\17\4+\5\2\0=\5\18\0049\4\15\0019\4\16\0049\4\17\0045\5\21\0005\6\20\0=\6\22\5=\5\19\0049\4\23\0009\4\24\0045\6\25\0=\1\26\6B\4\2\0019\4\27\0009\4\24\0045\6\28\0=\1\26\6=\2\29\6B\4\2\0019\4\30\0009\4\24\0045\6\31\0=\1\26\6=\2\29\6B\4\2\0019\4 \0009\4\24\0045\6!\0=\1\26\6=\2\29\6B\4\2\0019\4\"\0009\4\24\0045\6#\0=\1\26\6=\2\29\6B\4\2\0019\4$\0009\4\24\0045\6%\0=\1\26\6=\2\29\6B\4\2\1K\0\1\0\1\0\0\17intelephense\1\0\0\nvuels\1\0\0\vjsonls\1\0\0\ncssls\14on_attach\1\0\0\thtml\17capabilities\1\0\0\nsetup\18rust_analyzer\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\19completionItem\15completion\17textDocument\vtexthl\ttext\1\0\1\nnumhl\5\16sign_define\afn\23LspDiagnosticsSign\npairs\1\0\4\fWarning\b‚óè\16Information\b‚óè\nError\b‚óè\tHint\b‚óè\0\29make_client_capabilities\rprotocol\blsp\bvim\14lspconfig\frequire\0" },
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n¬\4\0\0\a\0\23\0\0276\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\6\0'\5\a\0005\6\b\0B\1\5\0019\1\t\0005\3\v\0005\4\n\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\20\0005\5\17\0005\6\18\0=\6\19\5=\5\21\4=\4\22\3B\1\2\1K\0\1\0\16textobjects\vselect\1\0\0\fkeymaps\1\0\f\aic\23@conditional.inner\aal\16@loop.outer\aif\20@function.inner\aaf\20@function.outer\aia\20@paramter.inner\aib\17@block.inner\aaa\21@parameter.outer\aab\17@block.outer\ail\16@loop.inner\aac\23@conditional.outer\aiC\17@class.inner\aaC\17@class.outer\1\0\2\venable\2\14lookahead\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\26context_commentstring\1\0\0\1\0\1\venable\2\nsetup\1\0\1\fnoremap\2(:TSHighlightCapturesUnderCursor<cr>\n<f10>\6n\20nvim_set_keymap\bapi\bvim\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nﬂ\"\0\0\t\0\0™\0026\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\17\0005\5\4\0005\6\5\0=\6\6\0055\6\f\0005\a\b\0009\b\a\1=\b\t\a9\b\n\1=\b\v\a=\a\r\0065\a\14\0009\b\a\1=\b\t\a9\b\n\1=\b\v\a=\a\15\6=\6\16\5=\5\18\0045\5\23\0005\6\19\0005\a\21\0005\b\20\0=\b\r\a5\b\22\0=\b\15\a=\a\16\6=\6\24\5=\5\25\4B\2\2\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5\29\0'\6\30\0005\a\31\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5 \0'\6!\0005\a\"\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5#\0'\6$\0005\a%\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5&\0'\6'\0005\a(\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5)\0'\6*\0005\a+\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5,\0'\6-\0005\a.\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5/\0'\0060\0005\a1\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\0052\0'\0063\0005\a4\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\0055\0'\0066\0005\a7\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\0058\0'\0069\0005\a:\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5;\0'\6<\0005\a=\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5>\0'\6?\0005\a@\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5A\0'\6B\0005\aC\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5D\0'\6E\0005\aF\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5G\0'\6H\0005\aI\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5J\0'\6K\0005\aL\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5M\0'\6N\0005\aO\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5P\0'\6Q\0005\aR\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5S\0'\6T\0005\aU\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5V\0'\6W\0005\aX\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5Y\0'\6Z\0005\a[\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5\\\0'\6]\0005\a^\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5_\0'\6`\0005\aa\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5b\0'\6c\0005\ad\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5e\0'\6f\0005\ag\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5h\0'\6i\0005\aj\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5k\0'\6l\0005\am\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5n\0'\6o\0005\ap\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5q\0'\6r\0005\as\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5t\0'\6u\0005\av\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5w\0'\6x\0005\ay\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5z\0'\6{\0005\a|\0B\2\5\0016\2\26\0009\2}\2'\4~\0B\2\2\1K\0\1\0Ø\t        highlight TelescopeMatching cterm=bold ctermfg=green\n        highlight TelescopeMultiSelection ctermfg=magenta\n        highlight TelescopeNormal cterm=none ctermfg=white\n        highlight TelescopePromptPrefix cterm=bold ctermfg=magenta\n        highlight TelescopeResultsDiffChange ctermbg=none ctermfg=yellow\n        highlight TelescopeResultsDiffAdd ctermbg=none ctermfg=green\n        highlight TelescopeResultsDiffDelete ctermbg=none ctermfg=red\n        highlight TelescopeResultsDiffUntracked ctermbg=none ctermfg=red\n        highlight TelescopeResultsClass ctermfg=blue\n        highlight TelescopeResultsConstant ctermfg=magenta\n        highlight TelescopeResultsField ctermfg=blue\n        highlight TelescopeResultsIdentifier ctermfg=yellow\n        highlight TelescopeResultsFunction ctermfg=cyan\n        highlight TelescopeResultsMethod ctermfg=cyan\n        highlight TelescopeResultsOperator ctermfg=blue\n        highlight TelescopeResultsStruct ctermfg=yellow\n        highlight TelescopeResultsVariable ctermfg=blue\n        highlight TelescopeSelection cterm=bold ctermbg=none ctermfg=white\n        highlight TelescopeSelectionCaret cterm=bold ctermbg=none ctermfg=magenta\n    \bcmd\1\0\1\fnoremap\2%<cmd>Telescope spell_suggest<cr>\r<space>s\1\0\1\fnoremap\2 <cmd>Telescope quickfix<cr>\r<space>q\1\0\1\fnoremap\2#<cmd>Telescope vim_options<cr>\r<space>o\1\0\1\fnoremap\2!<cmd>Telescope man_pages<cr>\r<space>m\1\0\1\fnoremap\2-<cmd>Telescope lsp_workspace_symbols<cr>\14<space>lw\1\0\1\fnoremap\2,<cmd>Telescope lsp_document_symbols<cr>\14<space>ls\1\0\1\fnoremap\2&<cmd>Telescope lsp_references<cr>\14<space>lr\1\0\1\fnoremap\2'<cmd>Telescope lsp_definitions<cr>\14<space>lk\1\0\1\fnoremap\2+<cmd>Telescope lsp_implementations<cr>\14<space>li\1\0\1\fnoremap\0020<cmd>Telescope lsp_document_diagnostics<cr>\14<space>ld\1\0\1\fnoremap\2(<cmd>Telescope lsp_code_actions<cr>\14<space>la\1\0\1\fnoremap\2\31<cmd>Telescope keymaps<cr>\r<space>k\1\0\1\fnoremap\2 <cmd>Telescope jumplist<cr>\r<space>j\1\0\1\fnoremap\2\"<cmd>Telescope highlights<cr>\r<space>h\1\0\1\fnoremap\2!<cmd>Telescope git_stash<cr>\14<space>gt\1\0\1\fnoremap\2$<cmd>Telescope git_branches<cr>\14<space>gb\1\0\1\fnoremap\2$<cmd>Telescope git_bcommits<cr>\14<space>gc\1\0\1\fnoremap\2#<cmd>Telescope git_commits<cr>\14<space>gl\1\0\1\fnoremap\2\"<cmd>Telescope git_status<cr>\14<space>gs\1\0\1\fnoremap\2!<cmd>Telescope git_files<cr>\14<space>gf\1\0\1\fnoremap\2 <cmd>Telescope commands<cr>\r<space>c\1\0\1\fnoremap\2!<cmd>Telescope help_tags<cr>\r<space>?\1\0\1\fnoremap\2&<cmd>Telescope search_history<cr>\r<space>/\1\0\1\fnoremap\2,<cmd>Telescope file_browser cwd=%:h<cr>\r<space>.\1\0\1\fnoremap\2$<cmd>Telescope file_browser<cr>\r<space>\\\1\0\1\fnoremap\2!<cmd>Telescope registers<cr>\r<space>\"\1\0\1\fnoremap\2\29<cmd>Telescope marks<cr>\r<space>'\1\0\1\fnoremap\2'<cmd>Telescope command_history<cr>\r<space>:\1\0\1\fnoremap\2 <cmd>Telescope tagstack<cr>\r<space>]\1\0\1\fnoremap\2\31<cmd>Telescope buffers<cr>\16<space><bs>\1\0\1\fnoremap\2\"<cmd>Telescope find_files<cr>\16<space><cr>\1\0\1\fnoremap\2!<cmd>Telescope live_grep<cr>\19<space><space>\20nvim_set_keymap\bapi\bvim\fpickers\fbuffers\1\0\0\1\0\1\n<c-d>\18delete_buffer\1\0\0\1\0\1\n<c-d>\18delete_buffer\1\0\1\rsort_mru\2\rdefaults\1\0\0\rmappings\6n\1\0\1\n<c-x>\1\6i\1\0\0\n<c-s>\15file_split\n<c-o>\1\0\1\n<c-x>\1\21toggle_selection\16borderchars\1\t\0\0\b‚îÄ\b‚îÇ\b‚îÄ\b‚îÇ\b‚îå\b‚îê\b‚îò\b‚îî\1\0\2\20selection_caret\t‚ùØ \18prompt_prefix\t‚ùØ \nsetup\22telescope.actions\14telescope\frequire\0" },
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-abolish"] = {
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/vim-abolish"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-eunuch"] = {
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/vim-eunuch"
  },
  ["vim-floaterm"] = {
    config = { "\27LJ\2\nõ\3\0\0\3\0\16\1!6\0\0\0009\0\1\0*\1\0\0=\1\2\0006\0\0\0009\0\1\0*\1\0\0=\1\3\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0'\1\a\0=\1\6\0006\0\0\0009\0\1\0'\1\t\0=\1\b\0006\0\0\0009\0\1\0'\1\v\0=\1\n\0006\0\0\0009\0\1\0'\1\r\0=\1\f\0006\0\0\0009\0\14\0'\2\15\0B\0\2\1K\0\1\0B        highlight FloatermBorder ctermbg=none guibg=none\n    \bcmd\15<c-\\><c-]>\25floaterm_keymap_next\15<c-\\><c-[>\25floaterm_keymap_prev\14<c-\\><bs>\25floaterm_keymap_kill\14<c-\\><cr>\24floaterm_keymap_new\15<c-\\><c-\\>\27floaterm_keymap_toggle\19floaterm_width\20floaterm_height\6g\bvimµÊÃô\19ô≥¶ˇ\3\0" },
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/vim-floaterm"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/vim-unimpaired"
  },
  ["vim-vsnip"] = {
    config = { "\27LJ\2\nπ\4\0\0\6\0\25\0G6\0\0\0009\0\1\0006\1\0\0009\1\3\0019\1\4\1'\3\5\0B\1\2\2=\1\2\0006\0\0\0009\0\1\0005\1\b\0005\2\a\0=\2\t\1=\1\6\0006\0\0\0009\0\n\0009\0\v\0'\2\f\0'\3\r\0'\4\14\0004\5\0\0B\0\5\0016\0\0\0009\0\n\0009\0\v\0'\2\f\0'\3\15\0'\4\16\0004\5\0\0B\0\5\0016\0\0\0009\0\n\0009\0\v\0'\2\17\0'\3\18\0'\4\19\0004\5\0\0B\0\5\0016\0\0\0009\0\n\0009\0\v\0'\2\17\0'\3\20\0'\4\21\0004\5\0\0B\0\5\0016\0\0\0009\0\n\0009\0\v\0'\2\17\0'\3\22\0'\4\23\0004\5\0\0B\0\5\0016\0\0\0009\0\n\0009\0\v\0'\2\24\0'\3\18\0'\4\19\0004\5\0\0B\0\5\0016\0\0\0009\0\n\0009\0\v\0'\2\24\0'\3\20\0'\4\21\0004\5\0\0B\0\5\1K\0\1\0\6s\25<plug>(vsnip-expand)\n<c-l>\28<plug>(vsnip-jump-prev)\n<c-k>\28<plug>(vsnip-jump-next)\n<c-j>\6i\27<plug>(vsnip-cut-text)\ass#<plug>(vsnip-select-text)<esc>\asy\6v\20nvim_set_keymap\bapi\bvue\1\0\0\1\4\0\0\thtml\bcss\15javascript\20vsnip_filetypes\28~/.config/nvim/snippets\vexpand\afn\22vsnip_snippet_dir\6g\bvim\0" },
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nƒ\4\0\2\t\0\22\00026\2\0\0009\2\1\2'\3\3\0=\3\2\0026\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\a\0'\a\b\0005\b\t\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\n\0'\a\v\0005\b\f\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\r\0'\a\14\0005\b\15\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\16\0'\a\17\0005\b\18\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\19\0'\a\20\0005\b\21\0B\2\6\1K\0\1\0\1\0\1\vsilent\2<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<cr>\agi\1\0\1\vsilent\0020<cmd>lua vim.lsp.diagnostic.goto_next()<cr>\a]d\1\0\1\vsilent\0020<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>\a[d\1\0\1\vsilent\2*<cmd>lua vim.lsp.buf.definition()<cr>\n<c-]>\1\0\1\vsilent\2:<cmd>lua vim.lsp.buf.hover({ border = \"single\" })<cr>\6K\6n\24nvim_buf_set_keymap\bapi\27v:lua.vim.lsp.omnifunc\romnifunc\abo\bvim¬\5\1\0\14\0&\0K6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\0019\1\5\1B\1\1\0023\2\6\0005\3\a\0006\4\b\0\18\6\3\0B\4\2\4H\a\vÄ'\t\t\0\18\n\a\0&\t\n\t6\n\2\0009\n\n\n9\n\v\n\18\f\t\0005\r\f\0=\b\r\r=\t\14\rB\n\3\1F\a\3\3R\aÛ9\4\15\0019\4\16\0049\4\17\4+\5\2\0=\5\18\0049\4\15\0019\4\16\0049\4\17\0045\5\21\0005\6\20\0=\6\22\5=\5\19\0049\4\23\0009\4\24\0045\6\25\0=\1\26\6B\4\2\0019\4\27\0009\4\24\0045\6\28\0=\1\26\6=\2\29\6B\4\2\0019\4\30\0009\4\24\0045\6\31\0=\1\26\6=\2\29\6B\4\2\0019\4 \0009\4\24\0045\6!\0=\1\26\6=\2\29\6B\4\2\0019\4\"\0009\4\24\0045\6#\0=\1\26\6=\2\29\6B\4\2\0019\4$\0009\4\24\0045\6%\0=\1\26\6=\2\29\6B\4\2\1K\0\1\0\1\0\0\17intelephense\1\0\0\nvuels\1\0\0\vjsonls\1\0\0\ncssls\14on_attach\1\0\0\thtml\17capabilities\1\0\0\nsetup\18rust_analyzer\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\19completionItem\15completion\17textDocument\vtexthl\ttext\1\0\1\nnumhl\5\16sign_define\afn\23LspDiagnosticsSign\npairs\1\0\4\fWarning\b‚óè\16Information\b‚óè\nError\b‚óè\tHint\b‚óè\0\29make_client_capabilities\rprotocol\blsp\bvim\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nﬂ\"\0\0\t\0\0™\0026\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\17\0005\5\4\0005\6\5\0=\6\6\0055\6\f\0005\a\b\0009\b\a\1=\b\t\a9\b\n\1=\b\v\a=\a\r\0065\a\14\0009\b\a\1=\b\t\a9\b\n\1=\b\v\a=\a\15\6=\6\16\5=\5\18\0045\5\23\0005\6\19\0005\a\21\0005\b\20\0=\b\r\a5\b\22\0=\b\15\a=\a\16\6=\6\24\5=\5\25\4B\2\2\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5\29\0'\6\30\0005\a\31\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5 \0'\6!\0005\a\"\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5#\0'\6$\0005\a%\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5&\0'\6'\0005\a(\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5)\0'\6*\0005\a+\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5,\0'\6-\0005\a.\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5/\0'\0060\0005\a1\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\0052\0'\0063\0005\a4\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\0055\0'\0066\0005\a7\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\0058\0'\0069\0005\a:\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5;\0'\6<\0005\a=\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5>\0'\6?\0005\a@\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5A\0'\6B\0005\aC\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5D\0'\6E\0005\aF\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5G\0'\6H\0005\aI\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5J\0'\6K\0005\aL\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5M\0'\6N\0005\aO\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5P\0'\6Q\0005\aR\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5S\0'\6T\0005\aU\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5V\0'\6W\0005\aX\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5Y\0'\6Z\0005\a[\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5\\\0'\6]\0005\a^\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5_\0'\6`\0005\aa\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5b\0'\6c\0005\ad\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5e\0'\6f\0005\ag\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5h\0'\6i\0005\aj\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5k\0'\6l\0005\am\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5n\0'\6o\0005\ap\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5q\0'\6r\0005\as\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5t\0'\6u\0005\av\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5w\0'\6x\0005\ay\0B\2\5\0016\2\26\0009\2\27\0029\2\28\2'\4\15\0'\5z\0'\6{\0005\a|\0B\2\5\0016\2\26\0009\2}\2'\4~\0B\2\2\1K\0\1\0Ø\t        highlight TelescopeMatching cterm=bold ctermfg=green\n        highlight TelescopeMultiSelection ctermfg=magenta\n        highlight TelescopeNormal cterm=none ctermfg=white\n        highlight TelescopePromptPrefix cterm=bold ctermfg=magenta\n        highlight TelescopeResultsDiffChange ctermbg=none ctermfg=yellow\n        highlight TelescopeResultsDiffAdd ctermbg=none ctermfg=green\n        highlight TelescopeResultsDiffDelete ctermbg=none ctermfg=red\n        highlight TelescopeResultsDiffUntracked ctermbg=none ctermfg=red\n        highlight TelescopeResultsClass ctermfg=blue\n        highlight TelescopeResultsConstant ctermfg=magenta\n        highlight TelescopeResultsField ctermfg=blue\n        highlight TelescopeResultsIdentifier ctermfg=yellow\n        highlight TelescopeResultsFunction ctermfg=cyan\n        highlight TelescopeResultsMethod ctermfg=cyan\n        highlight TelescopeResultsOperator ctermfg=blue\n        highlight TelescopeResultsStruct ctermfg=yellow\n        highlight TelescopeResultsVariable ctermfg=blue\n        highlight TelescopeSelection cterm=bold ctermbg=none ctermfg=white\n        highlight TelescopeSelectionCaret cterm=bold ctermbg=none ctermfg=magenta\n    \bcmd\1\0\1\fnoremap\2%<cmd>Telescope spell_suggest<cr>\r<space>s\1\0\1\fnoremap\2 <cmd>Telescope quickfix<cr>\r<space>q\1\0\1\fnoremap\2#<cmd>Telescope vim_options<cr>\r<space>o\1\0\1\fnoremap\2!<cmd>Telescope man_pages<cr>\r<space>m\1\0\1\fnoremap\2-<cmd>Telescope lsp_workspace_symbols<cr>\14<space>lw\1\0\1\fnoremap\2,<cmd>Telescope lsp_document_symbols<cr>\14<space>ls\1\0\1\fnoremap\2&<cmd>Telescope lsp_references<cr>\14<space>lr\1\0\1\fnoremap\2'<cmd>Telescope lsp_definitions<cr>\14<space>lk\1\0\1\fnoremap\2+<cmd>Telescope lsp_implementations<cr>\14<space>li\1\0\1\fnoremap\0020<cmd>Telescope lsp_document_diagnostics<cr>\14<space>ld\1\0\1\fnoremap\2(<cmd>Telescope lsp_code_actions<cr>\14<space>la\1\0\1\fnoremap\2\31<cmd>Telescope keymaps<cr>\r<space>k\1\0\1\fnoremap\2 <cmd>Telescope jumplist<cr>\r<space>j\1\0\1\fnoremap\2\"<cmd>Telescope highlights<cr>\r<space>h\1\0\1\fnoremap\2!<cmd>Telescope git_stash<cr>\14<space>gt\1\0\1\fnoremap\2$<cmd>Telescope git_branches<cr>\14<space>gb\1\0\1\fnoremap\2$<cmd>Telescope git_bcommits<cr>\14<space>gc\1\0\1\fnoremap\2#<cmd>Telescope git_commits<cr>\14<space>gl\1\0\1\fnoremap\2\"<cmd>Telescope git_status<cr>\14<space>gs\1\0\1\fnoremap\2!<cmd>Telescope git_files<cr>\14<space>gf\1\0\1\fnoremap\2 <cmd>Telescope commands<cr>\r<space>c\1\0\1\fnoremap\2!<cmd>Telescope help_tags<cr>\r<space>?\1\0\1\fnoremap\2&<cmd>Telescope search_history<cr>\r<space>/\1\0\1\fnoremap\2,<cmd>Telescope file_browser cwd=%:h<cr>\r<space>.\1\0\1\fnoremap\2$<cmd>Telescope file_browser<cr>\r<space>\\\1\0\1\fnoremap\2!<cmd>Telescope registers<cr>\r<space>\"\1\0\1\fnoremap\2\29<cmd>Telescope marks<cr>\r<space>'\1\0\1\fnoremap\2'<cmd>Telescope command_history<cr>\r<space>:\1\0\1\fnoremap\2 <cmd>Telescope tagstack<cr>\r<space>]\1\0\1\fnoremap\2\31<cmd>Telescope buffers<cr>\16<space><bs>\1\0\1\fnoremap\2\"<cmd>Telescope find_files<cr>\16<space><cr>\1\0\1\fnoremap\2!<cmd>Telescope live_grep<cr>\19<space><space>\20nvim_set_keymap\bapi\bvim\fpickers\fbuffers\1\0\0\1\0\1\n<c-d>\18delete_buffer\1\0\0\1\0\1\n<c-d>\18delete_buffer\1\0\1\rsort_mru\2\rdefaults\1\0\0\rmappings\6n\1\0\1\n<c-x>\1\6i\1\0\0\n<c-s>\15file_split\n<c-o>\1\0\1\n<c-x>\1\21toggle_selection\16borderchars\1\t\0\0\b‚îÄ\b‚îÇ\b‚îÄ\b‚îÇ\b‚îå\b‚îê\b‚îò\b‚îî\1\0\2\20selection_caret\t‚ùØ \18prompt_prefix\t‚ùØ \nsetup\22telescope.actions\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: vim-floaterm
time([[Config for vim-floaterm]], true)
try_loadstring("\27LJ\2\nõ\3\0\0\3\0\16\1!6\0\0\0009\0\1\0*\1\0\0=\1\2\0006\0\0\0009\0\1\0*\1\0\0=\1\3\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0'\1\a\0=\1\6\0006\0\0\0009\0\1\0'\1\t\0=\1\b\0006\0\0\0009\0\1\0'\1\v\0=\1\n\0006\0\0\0009\0\1\0'\1\r\0=\1\f\0006\0\0\0009\0\14\0'\2\15\0B\0\2\1K\0\1\0B        highlight FloatermBorder ctermbg=none guibg=none\n    \bcmd\15<c-\\><c-]>\25floaterm_keymap_next\15<c-\\><c-[>\25floaterm_keymap_prev\14<c-\\><bs>\25floaterm_keymap_kill\14<c-\\><cr>\24floaterm_keymap_new\15<c-\\><c-\\>\27floaterm_keymap_toggle\19floaterm_width\20floaterm_height\6g\bvimµÊÃô\19ô≥¶ˇ\3\0", "config", "vim-floaterm")
time([[Config for vim-floaterm]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n¬\4\0\0\a\0\23\0\0276\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\6\0'\5\a\0005\6\b\0B\1\5\0019\1\t\0005\3\v\0005\4\n\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\20\0005\5\17\0005\6\18\0=\6\19\5=\5\21\4=\4\22\3B\1\2\1K\0\1\0\16textobjects\vselect\1\0\0\fkeymaps\1\0\f\aic\23@conditional.inner\aal\16@loop.outer\aif\20@function.inner\aaf\20@function.outer\aia\20@paramter.inner\aib\17@block.inner\aaa\21@parameter.outer\aab\17@block.outer\ail\16@loop.inner\aac\23@conditional.outer\aiC\17@class.inner\aaC\17@class.outer\1\0\2\venable\2\14lookahead\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\26context_commentstring\1\0\0\1\0\1\venable\2\nsetup\1\0\1\fnoremap\2(:TSHighlightCapturesUnderCursor<cr>\n<f10>\6n\20nvim_set_keymap\bapi\bvim\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-compe
time([[Config for nvim-compe]], true)
try_loadstring("\27LJ\2\nB\0\0\2\0\3\1\n6\0\0\0009\0\1\0009\0\2\0B\0\1\2\b\0\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\15pumvisible\afn\bvim\2F\0\1\a\0\3\0\b6\1\0\0009\1\1\0019\1\2\1\18\3\0\0+\4\2\0+\5\2\0+\6\2\0D\1\5\0\27nvim_replace_termcodes\bapi\bvim´\1\0\0\a\0\b\2 6\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\23\0\0\0\t\0\1\0X\1\3Ä+\1\2\0L\1\2\0X\1\20Ä6\1\0\0009\1\1\0019\1\4\1'\3\3\0B\1\2\2\18\4\1\0009\2\5\1\18\5\0\0\18\6\0\0B\2\4\2\18\5\1\0009\3\6\1'\6\a\0B\3\3\2\v\3\0\0X\3\2Ä+\3\1\0X\4\1Ä+\3\2\0L\3\2\0K\0\1\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0É\1\0\0\3\3\5\0\21-\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\1\0'\2\0\0D\0\2\0X\0\fÄ-\0\2\0B\0\1\2\15\0\0\0X\1\4Ä-\0\1\0'\2\1\0D\0\2\0X\0\4Ä6\0\2\0009\0\3\0009\0\4\0D\0\1\0K\0\1\0\1¿\2¿\3¿\19compe#complete\afn\bvim\n<tab>\n<c-n>I\0\0\3\2\2\0\f-\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\1\0'\2\0\0D\0\2\0X\0\3Ä-\0\1\0'\2\1\0D\0\2\0K\0\1\0\1¿\2¿\f<s-tab>\n<c-p>¯\5\1\0\n\0&\0Q6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\3B\1\2\0013\1\6\0003\2\a\0003\3\b\0003\4\t\0007\4\n\0003\4\v\0007\4\f\0006\4\r\0009\4\14\0049\4\15\4'\6\16\0'\a\17\0'\b\18\0005\t\19\0B\4\5\0016\4\r\0009\4\14\0049\4\15\4'\6\16\0'\a\20\0'\b\21\0005\t\22\0B\4\5\0016\4\r\0009\4\14\0049\4\15\4'\6\16\0'\a\23\0'\b\24\0005\t\25\0B\4\5\0016\4\r\0009\4\14\0049\4\15\4'\6\16\0'\a\26\0'\b\27\0005\t\28\0B\4\5\0016\4\r\0009\4\14\0049\4\15\4'\6\16\0'\a\29\0'\b\30\0005\t\31\0B\4\5\0016\4\r\0009\4\14\0049\4\15\4'\6\16\0'\a \0'\b!\0005\t\"\0B\4\5\0016\4\r\0009\4\14\0049\4\15\4'\6#\0'\a\29\0'\b\30\0005\t$\0B\4\5\0016\4\r\0009\4\14\0049\4\15\4'\6#\0'\a \0'\b!\0005\t%\0B\4\5\0012\0\0ÄK\0\1\0\1\0\1\texpr\2\1\0\1\texpr\2\6s\1\0\1\texpr\2\27v:lua.s_tab_complete()\f<s-tab>\1\0\1\texpr\2\25v:lua.tab_complete()\n<tab>\1\0\2\texpr\2\vsilent\2\"compe#scroll({ 'delta': -4 })\n<c-b>\1\0\2\texpr\2\vsilent\2\"compe#scroll({ 'delta': +4 })\n<c-f>\1\0\2\texpr\2\vsilent\2\25compe#close('<c-e>')\n<c-e>\1\0\2\texpr\2\vsilent\2\26compe#confirm('<cr>')\t<cr>\6i\20nvim_set_keymap\bapi\bvim\19s_tab_complete\0\17tab_complete\0\0\0\0\vsource\1\0\0\1\0\6\tpath\2\nvsnip\2\rnvim_lua\2\rnvim_lsp\2\tcalc\2\vbuffer\2\nsetup\ncompe\frequire\0", "config", "nvim-compe")
time([[Config for nvim-compe]], false)
-- Config for: vim-vsnip
time([[Config for vim-vsnip]], true)
try_loadstring("\27LJ\2\nπ\4\0\0\6\0\25\0G6\0\0\0009\0\1\0006\1\0\0009\1\3\0019\1\4\1'\3\5\0B\1\2\2=\1\2\0006\0\0\0009\0\1\0005\1\b\0005\2\a\0=\2\t\1=\1\6\0006\0\0\0009\0\n\0009\0\v\0'\2\f\0'\3\r\0'\4\14\0004\5\0\0B\0\5\0016\0\0\0009\0\n\0009\0\v\0'\2\f\0'\3\15\0'\4\16\0004\5\0\0B\0\5\0016\0\0\0009\0\n\0009\0\v\0'\2\17\0'\3\18\0'\4\19\0004\5\0\0B\0\5\0016\0\0\0009\0\n\0009\0\v\0'\2\17\0'\3\20\0'\4\21\0004\5\0\0B\0\5\0016\0\0\0009\0\n\0009\0\v\0'\2\17\0'\3\22\0'\4\23\0004\5\0\0B\0\5\0016\0\0\0009\0\n\0009\0\v\0'\2\24\0'\3\18\0'\4\19\0004\5\0\0B\0\5\0016\0\0\0009\0\n\0009\0\v\0'\2\24\0'\3\20\0'\4\21\0004\5\0\0B\0\5\1K\0\1\0\6s\25<plug>(vsnip-expand)\n<c-l>\28<plug>(vsnip-jump-prev)\n<c-k>\28<plug>(vsnip-jump-next)\n<c-j>\6i\27<plug>(vsnip-cut-text)\ass#<plug>(vsnip-select-text)<esc>\asy\6v\20nvim_set_keymap\bapi\bvue\1\0\0\1\4\0\0\thtml\bcss\15javascript\20vsnip_filetypes\28~/.config/nvim/snippets\vexpand\afn\22vsnip_snippet_dir\6g\bvim\0", "config", "vim-vsnip")
time([[Config for vim-vsnip]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
