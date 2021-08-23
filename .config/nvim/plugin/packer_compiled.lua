-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = true
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
local package_path_str = "/home/liam/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/liam/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/liam/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/liam/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/liam/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n�\5\0\0\6\0\19\0\0236\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\14\0005\4\4\0005\5\3\0=\5\5\0045\5\6\0=\5\a\0045\5\b\0=\5\t\0045\5\n\0=\5\v\0045\5\f\0=\5\r\4=\4\15\3B\1\2\0016\1\16\0009\1\17\1'\3\18\0B\1\2\1K\0\1\0�\1        highlight GitSignsAdd ctermfg=green\n        highlight GitSignsChange ctermfg=yellow\n        highlight GitSignsDelete ctermfg=red\n    \bcmd\bvim\nsigns\1\0\0\17changedelete\1\0\4\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\ttext\b│\14topdelete\1\0\4\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\ttext\b│\vdelete\1\0\4\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\ttext\b│\vchange\1\0\4\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\ttext\b│\badd\1\0\0\1\0\4\vlinehl\18GitSignsAddLn\ahl\16GitSignsAdd\nnumhl\18GitSignsAddNr\ttext\b│\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["nvim-compe"] = {
    config = { "\27LJ\2\nB\0\0\2\0\3\1\n6\0\0\0009\0\1\0009\0\2\0B\0\1\2\b\0\0\0X\0\2�+\0\1\0X\1\1�+\0\2\0L\0\2\0\15pumvisible\afn\bvim\2F\0\1\a\0\3\0\b6\1\0\0009\1\1\0019\1\2\1\18\3\0\0+\4\2\0+\5\2\0+\6\2\0D\1\5\0\27nvim_replace_termcodes\bapi\bvim�\1\0\0\a\0\b\2 6\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\23\0\0\0\t\0\1\0X\1\3�+\1\2\0L\1\2\0X\1\20�6\1\0\0009\1\1\0019\1\4\1'\3\3\0B\1\2\2\18\4\1\0009\2\5\1\18\5\0\0\18\6\0\0B\2\4\2\18\5\1\0009\3\6\1'\6\a\0B\3\3\2\v\3\0\0X\3\2�+\3\1\0X\4\1�+\3\2\0L\3\2\0K\0\1\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0�\1\0\0\3\3\5\0\21-\0\0\0B\0\1\2\15\0\0\0X\1\4�-\0\1\0'\2\0\0D\0\2\0X\0\f�-\0\2\0B\0\1\2\15\0\0\0X\1\4�-\0\1\0'\2\1\0D\0\2\0X\0\4�6\0\2\0009\0\3\0009\0\4\0D\0\1\0K\0\1\0\1�\2�\3�\19compe#complete\afn\bvim\n<tab>\n<c-n>I\0\0\3\2\2\0\f-\0\0\0B\0\1\2\15\0\0\0X\1\4�-\0\1\0'\2\0\0D\0\2\0X\0\3�-\0\1\0'\2\1\0D\0\2\0K\0\1\0\1�\2�\f<s-tab>\n<c-p>�\5\1\0\n\0&\0Q6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\3B\1\2\0013\1\6\0003\2\a\0003\3\b\0003\4\t\0007\4\n\0003\4\v\0007\4\f\0006\4\r\0009\4\14\0049\4\15\4'\6\16\0'\a\17\0'\b\18\0005\t\19\0B\4\5\0016\4\r\0009\4\14\0049\4\15\4'\6\16\0'\a\20\0'\b\21\0005\t\22\0B\4\5\0016\4\r\0009\4\14\0049\4\15\4'\6\16\0'\a\23\0'\b\24\0005\t\25\0B\4\5\0016\4\r\0009\4\14\0049\4\15\4'\6\16\0'\a\26\0'\b\27\0005\t\28\0B\4\5\0016\4\r\0009\4\14\0049\4\15\4'\6\16\0'\a\29\0'\b\30\0005\t\31\0B\4\5\0016\4\r\0009\4\14\0049\4\15\4'\6\16\0'\a \0'\b!\0005\t\"\0B\4\5\0016\4\r\0009\4\14\0049\4\15\4'\6#\0'\a\29\0'\b\30\0005\t$\0B\4\5\0016\4\r\0009\4\14\0049\4\15\4'\6#\0'\a \0'\b!\0005\t%\0B\4\5\0012\0\0�K\0\1\0\1\0\1\texpr\2\1\0\1\texpr\2\6s\1\0\1\texpr\2\27v:lua.s_tab_complete()\f<s-tab>\1\0\1\texpr\2\25v:lua.tab_complete()\n<tab>\1\0\2\vsilent\2\texpr\2\"compe#scroll({ 'delta': -4 })\n<c-b>\1\0\2\vsilent\2\texpr\2\"compe#scroll({ 'delta': +4 })\n<c-f>\1\0\2\vsilent\2\texpr\2\25compe#close('<c-e>')\n<c-e>\1\0\2\vsilent\2\texpr\2\26compe#confirm('<cr>')\t<cr>\6i\20nvim_set_keymap\bapi\bvim\19s_tab_complete\0\17tab_complete\0\0\0\0\vsource\1\0\0\1\0\6\rnvim_lua\2\rnvim_lsp\2\tcalc\2\tpath\2\vbuffer\2\nvsnip\2\nsetup\ncompe\frequire\0" },
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n�\4\0\2\t\0\22\00026\2\0\0009\2\1\2'\3\3\0=\3\2\0026\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\a\0'\a\b\0005\b\t\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\n\0'\a\v\0005\b\f\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\r\0'\a\14\0005\b\15\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\16\0'\a\17\0005\b\18\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\19\0'\a\20\0005\b\21\0B\2\6\1K\0\1\0\1\0\1\vsilent\2<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<cr>\agi\1\0\1\vsilent\0020<cmd>lua vim.lsp.diagnostic.goto_next()<cr>\a]d\1\0\1\vsilent\0020<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>\a[d\1\0\1\vsilent\2*<cmd>lua vim.lsp.buf.definition()<cr>\n<c-]>\1\0\1\vsilent\2:<cmd>lua vim.lsp.buf.hover({ border = \"single\" })<cr>\6K\6n\24nvim_buf_set_keymap\bapi\27v:lua.vim.lsp.omnifunc\romnifunc\abo\bvim�\5\1\0\14\0&\0K6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\0019\1\5\1B\1\1\0023\2\6\0005\3\a\0006\4\b\0\18\6\3\0B\4\2\4H\a\v�'\t\t\0\18\n\a\0&\t\n\t6\n\2\0009\n\n\n9\n\v\n\18\f\t\0005\r\f\0=\b\r\r=\t\14\rB\n\3\1F\a\3\3R\a�9\4\15\0019\4\16\0049\4\17\4+\5\2\0=\5\18\0049\4\15\0019\4\16\0049\4\17\0045\5\21\0005\6\20\0=\6\22\5=\5\19\0049\4\23\0009\4\24\0045\6\25\0=\1\26\6B\4\2\0019\4\27\0009\4\24\0045\6\28\0=\1\26\6=\2\29\6B\4\2\0019\4\30\0009\4\24\0045\6\31\0=\1\26\6=\2\29\6B\4\2\0019\4 \0009\4\24\0045\6!\0=\1\26\6=\2\29\6B\4\2\0019\4\"\0009\4\24\0045\6#\0=\1\26\6=\2\29\6B\4\2\0019\4$\0009\4\24\0045\6%\0=\1\26\6=\2\29\6B\4\2\1K\0\1\0\1\0\0\17intelephense\1\0\0\nvuels\1\0\0\vjsonls\1\0\0\ncssls\14on_attach\1\0\0\thtml\17capabilities\1\0\0\nsetup\18rust_analyzer\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\19completionItem\15completion\17textDocument\vtexthl\ttext\1\0\1\nnumhl\5\16sign_define\afn\23LspDiagnosticsSign\npairs\1\0\4\fWarning\b●\16Information\b●\nError\b●\tHint\b●\0\29make_client_capabilities\rprotocol\blsp\bvim\14lspconfig\frequire\0" },
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n�\a\0\0\a\0\29\00046\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\1)\2\1\0=\2\4\0016\1\2\0009\1\3\0014\2\4\0005\3\a\0005\4\6\0=\4\b\3>\3\1\0025\3\t\0009\4\n\0'\6\v\0B\4\2\2=\4\f\3>\3\2\0025\3\r\0>\3\3\2=\2\5\0016\1\2\0009\1\3\0015\2\15\0=\2\14\0016\1\2\0009\1\3\0015\2\17\0=\2\16\0016\1\2\0009\1\18\0019\1\19\1'\3\20\0'\4\21\0'\5\22\0005\6\23\0B\1\5\0016\1\2\0009\1\18\0019\1\19\1'\3\20\0'\4\24\0'\5\25\0005\6\26\0B\1\5\0016\1\2\0009\1\27\1'\3\28\0B\1\2\1K\0\1\0�\2        autocmd BufEnter NvimTree setlocal statusline=%#Normal#\n\n        highlight NvimTreeIndentMarker ctermfg=magenta\n        highlight NvimTreeFolderIcon ctermfg=blue\n        highlight NvimTreeFolderName cterm=bold ctermfg=cyan\n        highlight NvimTreeGitDirty cterm=bold ctermfg=red\n        highlight NvimTreeGitStaged cterm=bold ctermfg=yellow\n    \bcmd\1\0\1\fnoremap\2\30<cmd>NvimTreeFindFile<cr>\6\\\1\0\1\fnoremap\2\28<cmd>NvimTreeToggle<cr>\t<cr>\6n\20nvim_set_keymap\bapi\1\0\1\fdefault\b\20nvim_tree_icons\1\0\4\18folder_arrows\3\1\bgit\3\0\ffolders\3\1\nfiles\3\1\25nvim_tree_show_icons\1\0\2\acb\5\bkey\n<c-x>\acb\nsplit\23nvim_tree_callback\1\0\1\bkey\n<c-s>\bkey\1\0\1\acb\28<cmd>NvimTreeToggle<cr>\1\3\0\0\t<cr>\6\\\23nvim_tree_bindings\21nvim_tree_git_hl\6g\bvim\21nvim-tree.config\frequire\0" },
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n�\4\0\0\a\0\23\0\0276\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\6\0'\5\a\0005\6\b\0B\1\5\0019\1\t\0005\3\v\0005\4\n\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\20\0005\5\17\0005\6\18\0=\6\19\5=\5\21\4=\4\22\3B\1\2\1K\0\1\0\16textobjects\vselect\1\0\0\fkeymaps\1\0\f\aac\23@conditional.outer\aal\16@loop.outer\aaf\20@function.outer\aia\20@paramter.inner\aib\17@block.inner\aaa\21@parameter.outer\aab\17@block.outer\ail\16@loop.inner\aif\20@function.inner\aiC\17@class.inner\aic\23@conditional.inner\aaC\17@class.outer\1\0\2\14lookahead\2\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\26context_commentstring\1\0\0\1\0\1\venable\2\nsetup\1\0\1\fnoremap\2(:TSHighlightCapturesUnderCursor<cr>\n<f10>\6n\20nvim_set_keymap\bapi\bvim\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n�!\0\0\t\0w\0�\0026\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\15\0005\5\4\0005\6\5\0=\6\6\0055\6\n\0005\a\a\0009\b\b\1=\b\t\a=\a\v\0065\a\f\0009\b\b\1=\b\t\a=\a\r\6=\6\14\5=\5\16\0045\5\21\0005\6\17\0005\a\19\0005\b\18\0=\b\v\a5\b\20\0=\b\r\a=\a\14\6=\6\22\5=\5\23\4B\2\2\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5\27\0'\6\28\0005\a\29\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5\30\0'\6\31\0005\a \0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5!\0'\6\"\0005\a#\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5$\0'\6%\0005\a&\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5'\0'\6(\0005\a)\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5*\0'\6+\0005\a,\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5-\0'\6.\0005\a/\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\0050\0'\0061\0005\a2\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\0053\0'\0064\0005\a5\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\0056\0'\0067\0005\a8\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\0059\0'\6:\0005\a;\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5<\0'\6=\0005\a>\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5?\0'\6@\0005\aA\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5B\0'\6C\0005\aD\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5E\0'\6F\0005\aG\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5H\0'\6I\0005\aJ\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5K\0'\6L\0005\aM\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5N\0'\6O\0005\aP\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5Q\0'\6R\0005\aS\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5T\0'\6U\0005\aV\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5W\0'\6X\0005\aY\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5Z\0'\6[\0005\a\\\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5]\0'\6^\0005\a_\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5`\0'\6a\0005\ab\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5c\0'\6d\0005\ae\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5f\0'\6g\0005\ah\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5i\0'\6j\0005\ak\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5l\0'\6m\0005\an\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5o\0'\6p\0005\aq\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5r\0'\6s\0005\at\0B\2\5\0016\2\24\0009\2u\2'\4v\0B\2\2\1K\0\1\0�\t        highlight TelescopeMatching cterm=bold ctermfg=green\n        highlight TelescopeMultiSelection ctermfg=magenta\n        highlight TelescopeNormal cterm=none ctermfg=white\n        highlight TelescopePromptPrefix cterm=bold ctermfg=magenta\n        highlight TelescopeResultsDiffChange ctermbg=none ctermfg=yellow\n        highlight TelescopeResultsDiffAdd ctermbg=none ctermfg=green\n        highlight TelescopeResultsDiffDelete ctermbg=none ctermfg=red\n        highlight TelescopeResultsDiffUntracked ctermbg=none ctermfg=red\n        highlight TelescopeResultsClass ctermfg=blue\n        highlight TelescopeResultsConstant ctermfg=magenta\n        highlight TelescopeResultsField ctermfg=blue\n        highlight TelescopeResultsIdentifier ctermfg=yellow\n        highlight TelescopeResultsFunction ctermfg=cyan\n        highlight TelescopeResultsMethod ctermfg=cyan\n        highlight TelescopeResultsOperator ctermfg=blue\n        highlight TelescopeResultsStruct ctermfg=yellow\n        highlight TelescopeResultsVariable ctermfg=blue\n        highlight TelescopeSelection cterm=bold ctermbg=none ctermfg=white\n        highlight TelescopeSelectionCaret cterm=bold ctermbg=none ctermfg=magenta\n    \bcmd\1\0\1\fnoremap\2%<cmd>Telescope spell_suggest<cr>\r<space>s\1\0\1\fnoremap\2 <cmd>Telescope quickfix<cr>\r<space>q\1\0\1\fnoremap\2#<cmd>Telescope vim_options<cr>\r<space>o\1\0\1\fnoremap\2!<cmd>Telescope man_pages<cr>\r<space>m\1\0\1\fnoremap\2-<cmd>Telescope lsp_workspace_symbols<cr>\14<space>lw\1\0\1\fnoremap\2,<cmd>Telescope lsp_document_symbols<cr>\14<space>ls\1\0\1\fnoremap\2&<cmd>Telescope lsp_references<cr>\14<space>lr\1\0\1\fnoremap\2'<cmd>Telescope lsp_definitions<cr>\14<space>lk\1\0\1\fnoremap\2+<cmd>Telescope lsp_implementations<cr>\14<space>li\1\0\1\fnoremap\0020<cmd>Telescope lsp_document_diagnostics<cr>\14<space>ld\1\0\1\fnoremap\2(<cmd>Telescope lsp_code_actions<cr>\14<space>la\1\0\1\fnoremap\2\31<cmd>Telescope keymaps<cr>\r<space>n\1\0\1\fnoremap\2 <cmd>Telescope jumplist<cr>\r<space>j\1\0\1\fnoremap\2\"<cmd>Telescope highlights<cr>\r<space>h\1\0\1\fnoremap\2!<cmd>Telescope git_stash<cr>\14<space>gt\1\0\1\fnoremap\2$<cmd>Telescope git_branches<cr>\14<space>gb\1\0\1\fnoremap\2$<cmd>Telescope git_bcommits<cr>\14<space>gc\1\0\1\fnoremap\2#<cmd>Telescope git_commits<cr>\14<space>gl\1\0\1\fnoremap\2\"<cmd>Telescope git_status<cr>\14<space>gs\1\0\1\fnoremap\2!<cmd>Telescope git_files<cr>\14<space>gf\1\0\1\fnoremap\2 <cmd>Telescope commands<cr>\r<space>c\1\0\1\fnoremap\2!<cmd>Telescope help_tags<cr>\r<space>?\1\0\1\fnoremap\2&<cmd>Telescope search_history<cr>\r<space>/\1\0\1\fnoremap\2!<cmd>Telescope registers<cr>\r<space>\"\1\0\1\fnoremap\2\29<cmd>Telescope marks<cr>\r<space>'\1\0\1\fnoremap\2'<cmd>Telescope command_history<cr>\r<space>:\1\0\1\fnoremap\2 <cmd>Telescope tagstack<cr>\r<space>]\1\0\1\fnoremap\2\31<cmd>Telescope buffers<cr>\16<space><bs>\1\0\1\fnoremap\2\"<cmd>Telescope find_files<cr>\16<space><cr>\1\0\1\fnoremap\2!<cmd>Telescope live_grep<cr>\19<space><space>\20nvim_set_keymap\bapi\bvim\fpickers\fbuffers\1\0\0\1\0\1\n<c-d>\18delete_buffer\1\0\0\1\0\1\n<c-d>\18delete_buffer\1\0\1\rsort_mru\2\rdefaults\1\0\0\rmappings\6n\1\0\1\n<c-x>\1\6i\1\0\0\n<c-s>\15file_split\1\0\1\n<c-x>\1\16borderchars\1\t\0\0\b─\b│\b─\b│\b┌\b┐\b┘\b└\1\0\2\20selection_caret\t❯ \18prompt_prefix\t❯ \nsetup\22telescope.actions\14telescope\frequire\0" },
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-abolish"] = {
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/vim-abolish"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-eunuch"] = {
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/vim-eunuch"
  },
  ["vim-floaterm"] = {
    config = { "\27LJ\2\n�\3\0\0\3\0\16\1!6\0\0\0009\0\1\0*\1\0\0=\1\2\0006\0\0\0009\0\1\0*\1\0\0=\1\3\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0'\1\a\0=\1\6\0006\0\0\0009\0\1\0'\1\t\0=\1\b\0006\0\0\0009\0\1\0'\1\v\0=\1\n\0006\0\0\0009\0\1\0'\1\r\0=\1\f\0006\0\0\0009\0\14\0'\2\15\0B\0\2\1K\0\1\0B        highlight FloatermBorder ctermbg=none guibg=none\n    \bcmd\15<c-\\><c-]>\25floaterm_keymap_next\15<c-\\><c-[>\25floaterm_keymap_prev\14<c-\\><bs>\25floaterm_keymap_kill\14<c-\\><cr>\24floaterm_keymap_new\15<c-\\><c-\\>\27floaterm_keymap_toggle\19floaterm_width\20floaterm_height\6g\bvim��̙\19����\3\0" },
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/vim-floaterm"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-speeddating"] = {
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/vim-speeddating"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/vim-unimpaired"
  },
  ["vim-vsnip"] = {
    config = { "\27LJ\2\n�\4\0\0\6\0\25\0G6\0\0\0009\0\1\0006\1\0\0009\1\3\0019\1\4\1'\3\5\0B\1\2\2=\1\2\0006\0\0\0009\0\1\0005\1\b\0005\2\a\0=\2\t\1=\1\6\0006\0\0\0009\0\n\0009\0\v\0'\2\f\0'\3\r\0'\4\14\0004\5\0\0B\0\5\0016\0\0\0009\0\n\0009\0\v\0'\2\f\0'\3\15\0'\4\16\0004\5\0\0B\0\5\0016\0\0\0009\0\n\0009\0\v\0'\2\17\0'\3\18\0'\4\19\0004\5\0\0B\0\5\0016\0\0\0009\0\n\0009\0\v\0'\2\17\0'\3\20\0'\4\21\0004\5\0\0B\0\5\0016\0\0\0009\0\n\0009\0\v\0'\2\17\0'\3\22\0'\4\23\0004\5\0\0B\0\5\0016\0\0\0009\0\n\0009\0\v\0'\2\24\0'\3\18\0'\4\19\0004\5\0\0B\0\5\0016\0\0\0009\0\n\0009\0\v\0'\2\24\0'\3\20\0'\4\21\0004\5\0\0B\0\5\1K\0\1\0\6s\25<plug>(vsnip-expand)\n<c-l>\28<plug>(vsnip-jump-prev)\n<c-k>\28<plug>(vsnip-jump-next)\n<c-j>\6i\27<plug>(vsnip-cut-text)\ass#<plug>(vsnip-select-text)<esc>\asy\6v\20nvim_set_keymap\bapi\bvue\1\0\0\1\4\0\0\thtml\bcss\15javascript\20vsnip_filetypes\28~/.config/nvim/snippets\vexpand\afn\22vsnip_snippet_dir\6g\bvim\0" },
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-compe
time([[Config for nvim-compe]], true)
try_loadstring("\27LJ\2\nB\0\0\2\0\3\1\n6\0\0\0009\0\1\0009\0\2\0B\0\1\2\b\0\0\0X\0\2�+\0\1\0X\1\1�+\0\2\0L\0\2\0\15pumvisible\afn\bvim\2F\0\1\a\0\3\0\b6\1\0\0009\1\1\0019\1\2\1\18\3\0\0+\4\2\0+\5\2\0+\6\2\0D\1\5\0\27nvim_replace_termcodes\bapi\bvim�\1\0\0\a\0\b\2 6\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\23\0\0\0\t\0\1\0X\1\3�+\1\2\0L\1\2\0X\1\20�6\1\0\0009\1\1\0019\1\4\1'\3\3\0B\1\2\2\18\4\1\0009\2\5\1\18\5\0\0\18\6\0\0B\2\4\2\18\5\1\0009\3\6\1'\6\a\0B\3\3\2\v\3\0\0X\3\2�+\3\1\0X\4\1�+\3\2\0L\3\2\0K\0\1\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0�\1\0\0\3\3\5\0\21-\0\0\0B\0\1\2\15\0\0\0X\1\4�-\0\1\0'\2\0\0D\0\2\0X\0\f�-\0\2\0B\0\1\2\15\0\0\0X\1\4�-\0\1\0'\2\1\0D\0\2\0X\0\4�6\0\2\0009\0\3\0009\0\4\0D\0\1\0K\0\1\0\1�\2�\3�\19compe#complete\afn\bvim\n<tab>\n<c-n>I\0\0\3\2\2\0\f-\0\0\0B\0\1\2\15\0\0\0X\1\4�-\0\1\0'\2\0\0D\0\2\0X\0\3�-\0\1\0'\2\1\0D\0\2\0K\0\1\0\1�\2�\f<s-tab>\n<c-p>�\5\1\0\n\0&\0Q6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\3B\1\2\0013\1\6\0003\2\a\0003\3\b\0003\4\t\0007\4\n\0003\4\v\0007\4\f\0006\4\r\0009\4\14\0049\4\15\4'\6\16\0'\a\17\0'\b\18\0005\t\19\0B\4\5\0016\4\r\0009\4\14\0049\4\15\4'\6\16\0'\a\20\0'\b\21\0005\t\22\0B\4\5\0016\4\r\0009\4\14\0049\4\15\4'\6\16\0'\a\23\0'\b\24\0005\t\25\0B\4\5\0016\4\r\0009\4\14\0049\4\15\4'\6\16\0'\a\26\0'\b\27\0005\t\28\0B\4\5\0016\4\r\0009\4\14\0049\4\15\4'\6\16\0'\a\29\0'\b\30\0005\t\31\0B\4\5\0016\4\r\0009\4\14\0049\4\15\4'\6\16\0'\a \0'\b!\0005\t\"\0B\4\5\0016\4\r\0009\4\14\0049\4\15\4'\6#\0'\a\29\0'\b\30\0005\t$\0B\4\5\0016\4\r\0009\4\14\0049\4\15\4'\6#\0'\a \0'\b!\0005\t%\0B\4\5\0012\0\0�K\0\1\0\1\0\1\texpr\2\1\0\1\texpr\2\6s\1\0\1\texpr\2\27v:lua.s_tab_complete()\f<s-tab>\1\0\1\texpr\2\25v:lua.tab_complete()\n<tab>\1\0\2\vsilent\2\texpr\2\"compe#scroll({ 'delta': -4 })\n<c-b>\1\0\2\vsilent\2\texpr\2\"compe#scroll({ 'delta': +4 })\n<c-f>\1\0\2\vsilent\2\texpr\2\25compe#close('<c-e>')\n<c-e>\1\0\2\vsilent\2\texpr\2\26compe#confirm('<cr>')\t<cr>\6i\20nvim_set_keymap\bapi\bvim\19s_tab_complete\0\17tab_complete\0\0\0\0\vsource\1\0\0\1\0\6\rnvim_lua\2\rnvim_lsp\2\tcalc\2\tpath\2\vbuffer\2\nvsnip\2\nsetup\ncompe\frequire\0", "config", "nvim-compe")
time([[Config for nvim-compe]], false)
-- Config for: vim-floaterm
time([[Config for vim-floaterm]], true)
try_loadstring("\27LJ\2\n�\3\0\0\3\0\16\1!6\0\0\0009\0\1\0*\1\0\0=\1\2\0006\0\0\0009\0\1\0*\1\0\0=\1\3\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0'\1\a\0=\1\6\0006\0\0\0009\0\1\0'\1\t\0=\1\b\0006\0\0\0009\0\1\0'\1\v\0=\1\n\0006\0\0\0009\0\1\0'\1\r\0=\1\f\0006\0\0\0009\0\14\0'\2\15\0B\0\2\1K\0\1\0B        highlight FloatermBorder ctermbg=none guibg=none\n    \bcmd\15<c-\\><c-]>\25floaterm_keymap_next\15<c-\\><c-[>\25floaterm_keymap_prev\14<c-\\><bs>\25floaterm_keymap_kill\14<c-\\><cr>\24floaterm_keymap_new\15<c-\\><c-\\>\27floaterm_keymap_toggle\19floaterm_width\20floaterm_height\6g\bvim��̙\19����\3\0", "config", "vim-floaterm")
time([[Config for vim-floaterm]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n�!\0\0\t\0w\0�\0026\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\15\0005\5\4\0005\6\5\0=\6\6\0055\6\n\0005\a\a\0009\b\b\1=\b\t\a=\a\v\0065\a\f\0009\b\b\1=\b\t\a=\a\r\6=\6\14\5=\5\16\0045\5\21\0005\6\17\0005\a\19\0005\b\18\0=\b\v\a5\b\20\0=\b\r\a=\a\14\6=\6\22\5=\5\23\4B\2\2\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5\27\0'\6\28\0005\a\29\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5\30\0'\6\31\0005\a \0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5!\0'\6\"\0005\a#\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5$\0'\6%\0005\a&\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5'\0'\6(\0005\a)\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5*\0'\6+\0005\a,\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5-\0'\6.\0005\a/\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\0050\0'\0061\0005\a2\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\0053\0'\0064\0005\a5\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\0056\0'\0067\0005\a8\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\0059\0'\6:\0005\a;\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5<\0'\6=\0005\a>\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5?\0'\6@\0005\aA\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5B\0'\6C\0005\aD\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5E\0'\6F\0005\aG\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5H\0'\6I\0005\aJ\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5K\0'\6L\0005\aM\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5N\0'\6O\0005\aP\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5Q\0'\6R\0005\aS\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5T\0'\6U\0005\aV\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5W\0'\6X\0005\aY\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5Z\0'\6[\0005\a\\\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5]\0'\6^\0005\a_\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5`\0'\6a\0005\ab\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5c\0'\6d\0005\ae\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5f\0'\6g\0005\ah\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5i\0'\6j\0005\ak\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5l\0'\6m\0005\an\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5o\0'\6p\0005\aq\0B\2\5\0016\2\24\0009\2\25\0029\2\26\2'\4\r\0'\5r\0'\6s\0005\at\0B\2\5\0016\2\24\0009\2u\2'\4v\0B\2\2\1K\0\1\0�\t        highlight TelescopeMatching cterm=bold ctermfg=green\n        highlight TelescopeMultiSelection ctermfg=magenta\n        highlight TelescopeNormal cterm=none ctermfg=white\n        highlight TelescopePromptPrefix cterm=bold ctermfg=magenta\n        highlight TelescopeResultsDiffChange ctermbg=none ctermfg=yellow\n        highlight TelescopeResultsDiffAdd ctermbg=none ctermfg=green\n        highlight TelescopeResultsDiffDelete ctermbg=none ctermfg=red\n        highlight TelescopeResultsDiffUntracked ctermbg=none ctermfg=red\n        highlight TelescopeResultsClass ctermfg=blue\n        highlight TelescopeResultsConstant ctermfg=magenta\n        highlight TelescopeResultsField ctermfg=blue\n        highlight TelescopeResultsIdentifier ctermfg=yellow\n        highlight TelescopeResultsFunction ctermfg=cyan\n        highlight TelescopeResultsMethod ctermfg=cyan\n        highlight TelescopeResultsOperator ctermfg=blue\n        highlight TelescopeResultsStruct ctermfg=yellow\n        highlight TelescopeResultsVariable ctermfg=blue\n        highlight TelescopeSelection cterm=bold ctermbg=none ctermfg=white\n        highlight TelescopeSelectionCaret cterm=bold ctermbg=none ctermfg=magenta\n    \bcmd\1\0\1\fnoremap\2%<cmd>Telescope spell_suggest<cr>\r<space>s\1\0\1\fnoremap\2 <cmd>Telescope quickfix<cr>\r<space>q\1\0\1\fnoremap\2#<cmd>Telescope vim_options<cr>\r<space>o\1\0\1\fnoremap\2!<cmd>Telescope man_pages<cr>\r<space>m\1\0\1\fnoremap\2-<cmd>Telescope lsp_workspace_symbols<cr>\14<space>lw\1\0\1\fnoremap\2,<cmd>Telescope lsp_document_symbols<cr>\14<space>ls\1\0\1\fnoremap\2&<cmd>Telescope lsp_references<cr>\14<space>lr\1\0\1\fnoremap\2'<cmd>Telescope lsp_definitions<cr>\14<space>lk\1\0\1\fnoremap\2+<cmd>Telescope lsp_implementations<cr>\14<space>li\1\0\1\fnoremap\0020<cmd>Telescope lsp_document_diagnostics<cr>\14<space>ld\1\0\1\fnoremap\2(<cmd>Telescope lsp_code_actions<cr>\14<space>la\1\0\1\fnoremap\2\31<cmd>Telescope keymaps<cr>\r<space>n\1\0\1\fnoremap\2 <cmd>Telescope jumplist<cr>\r<space>j\1\0\1\fnoremap\2\"<cmd>Telescope highlights<cr>\r<space>h\1\0\1\fnoremap\2!<cmd>Telescope git_stash<cr>\14<space>gt\1\0\1\fnoremap\2$<cmd>Telescope git_branches<cr>\14<space>gb\1\0\1\fnoremap\2$<cmd>Telescope git_bcommits<cr>\14<space>gc\1\0\1\fnoremap\2#<cmd>Telescope git_commits<cr>\14<space>gl\1\0\1\fnoremap\2\"<cmd>Telescope git_status<cr>\14<space>gs\1\0\1\fnoremap\2!<cmd>Telescope git_files<cr>\14<space>gf\1\0\1\fnoremap\2 <cmd>Telescope commands<cr>\r<space>c\1\0\1\fnoremap\2!<cmd>Telescope help_tags<cr>\r<space>?\1\0\1\fnoremap\2&<cmd>Telescope search_history<cr>\r<space>/\1\0\1\fnoremap\2!<cmd>Telescope registers<cr>\r<space>\"\1\0\1\fnoremap\2\29<cmd>Telescope marks<cr>\r<space>'\1\0\1\fnoremap\2'<cmd>Telescope command_history<cr>\r<space>:\1\0\1\fnoremap\2 <cmd>Telescope tagstack<cr>\r<space>]\1\0\1\fnoremap\2\31<cmd>Telescope buffers<cr>\16<space><bs>\1\0\1\fnoremap\2\"<cmd>Telescope find_files<cr>\16<space><cr>\1\0\1\fnoremap\2!<cmd>Telescope live_grep<cr>\19<space><space>\20nvim_set_keymap\bapi\bvim\fpickers\fbuffers\1\0\0\1\0\1\n<c-d>\18delete_buffer\1\0\0\1\0\1\n<c-d>\18delete_buffer\1\0\1\rsort_mru\2\rdefaults\1\0\0\rmappings\6n\1\0\1\n<c-x>\1\6i\1\0\0\n<c-s>\15file_split\1\0\1\n<c-x>\1\16borderchars\1\t\0\0\b─\b│\b─\b│\b┌\b┐\b┘\b└\1\0\2\20selection_caret\t❯ \18prompt_prefix\t❯ \nsetup\22telescope.actions\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n�\4\0\2\t\0\22\00026\2\0\0009\2\1\2'\3\3\0=\3\2\0026\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\a\0'\a\b\0005\b\t\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\n\0'\a\v\0005\b\f\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\r\0'\a\14\0005\b\15\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\16\0'\a\17\0005\b\18\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\19\0'\a\20\0005\b\21\0B\2\6\1K\0\1\0\1\0\1\vsilent\2<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<cr>\agi\1\0\1\vsilent\0020<cmd>lua vim.lsp.diagnostic.goto_next()<cr>\a]d\1\0\1\vsilent\0020<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>\a[d\1\0\1\vsilent\2*<cmd>lua vim.lsp.buf.definition()<cr>\n<c-]>\1\0\1\vsilent\2:<cmd>lua vim.lsp.buf.hover({ border = \"single\" })<cr>\6K\6n\24nvim_buf_set_keymap\bapi\27v:lua.vim.lsp.omnifunc\romnifunc\abo\bvim�\5\1\0\14\0&\0K6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\0019\1\5\1B\1\1\0023\2\6\0005\3\a\0006\4\b\0\18\6\3\0B\4\2\4H\a\v�'\t\t\0\18\n\a\0&\t\n\t6\n\2\0009\n\n\n9\n\v\n\18\f\t\0005\r\f\0=\b\r\r=\t\14\rB\n\3\1F\a\3\3R\a�9\4\15\0019\4\16\0049\4\17\4+\5\2\0=\5\18\0049\4\15\0019\4\16\0049\4\17\0045\5\21\0005\6\20\0=\6\22\5=\5\19\0049\4\23\0009\4\24\0045\6\25\0=\1\26\6B\4\2\0019\4\27\0009\4\24\0045\6\28\0=\1\26\6=\2\29\6B\4\2\0019\4\30\0009\4\24\0045\6\31\0=\1\26\6=\2\29\6B\4\2\0019\4 \0009\4\24\0045\6!\0=\1\26\6=\2\29\6B\4\2\0019\4\"\0009\4\24\0045\6#\0=\1\26\6=\2\29\6B\4\2\0019\4$\0009\4\24\0045\6%\0=\1\26\6=\2\29\6B\4\2\1K\0\1\0\1\0\0\17intelephense\1\0\0\nvuels\1\0\0\vjsonls\1\0\0\ncssls\14on_attach\1\0\0\thtml\17capabilities\1\0\0\nsetup\18rust_analyzer\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\19completionItem\15completion\17textDocument\vtexthl\ttext\1\0\1\nnumhl\5\16sign_define\afn\23LspDiagnosticsSign\npairs\1\0\4\fWarning\b●\16Information\b●\nError\b●\tHint\b●\0\29make_client_capabilities\rprotocol\blsp\bvim\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n�\4\0\0\a\0\23\0\0276\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\6\0'\5\a\0005\6\b\0B\1\5\0019\1\t\0005\3\v\0005\4\n\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\20\0005\5\17\0005\6\18\0=\6\19\5=\5\21\4=\4\22\3B\1\2\1K\0\1\0\16textobjects\vselect\1\0\0\fkeymaps\1\0\f\aac\23@conditional.outer\aal\16@loop.outer\aaf\20@function.outer\aia\20@paramter.inner\aib\17@block.inner\aaa\21@parameter.outer\aab\17@block.outer\ail\16@loop.inner\aif\20@function.inner\aiC\17@class.inner\aic\23@conditional.inner\aaC\17@class.outer\1\0\2\14lookahead\2\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\26context_commentstring\1\0\0\1\0\1\venable\2\nsetup\1\0\1\fnoremap\2(:TSHighlightCapturesUnderCursor<cr>\n<f10>\6n\20nvim_set_keymap\bapi\bvim\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n�\5\0\0\6\0\19\0\0236\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\14\0005\4\4\0005\5\3\0=\5\5\0045\5\6\0=\5\a\0045\5\b\0=\5\t\0045\5\n\0=\5\v\0045\5\f\0=\5\r\4=\4\15\3B\1\2\0016\1\16\0009\1\17\1'\3\18\0B\1\2\1K\0\1\0�\1        highlight GitSignsAdd ctermfg=green\n        highlight GitSignsChange ctermfg=yellow\n        highlight GitSignsDelete ctermfg=red\n    \bcmd\bvim\nsigns\1\0\0\17changedelete\1\0\4\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\ttext\b│\14topdelete\1\0\4\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\ttext\b│\vdelete\1\0\4\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\ttext\b│\vchange\1\0\4\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\ttext\b│\badd\1\0\0\1\0\4\vlinehl\18GitSignsAddLn\ahl\16GitSignsAdd\nnumhl\18GitSignsAddNr\ttext\b│\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: vim-vsnip
time([[Config for vim-vsnip]], true)
try_loadstring("\27LJ\2\n�\4\0\0\6\0\25\0G6\0\0\0009\0\1\0006\1\0\0009\1\3\0019\1\4\1'\3\5\0B\1\2\2=\1\2\0006\0\0\0009\0\1\0005\1\b\0005\2\a\0=\2\t\1=\1\6\0006\0\0\0009\0\n\0009\0\v\0'\2\f\0'\3\r\0'\4\14\0004\5\0\0B\0\5\0016\0\0\0009\0\n\0009\0\v\0'\2\f\0'\3\15\0'\4\16\0004\5\0\0B\0\5\0016\0\0\0009\0\n\0009\0\v\0'\2\17\0'\3\18\0'\4\19\0004\5\0\0B\0\5\0016\0\0\0009\0\n\0009\0\v\0'\2\17\0'\3\20\0'\4\21\0004\5\0\0B\0\5\0016\0\0\0009\0\n\0009\0\v\0'\2\17\0'\3\22\0'\4\23\0004\5\0\0B\0\5\0016\0\0\0009\0\n\0009\0\v\0'\2\24\0'\3\18\0'\4\19\0004\5\0\0B\0\5\0016\0\0\0009\0\n\0009\0\v\0'\2\24\0'\3\20\0'\4\21\0004\5\0\0B\0\5\1K\0\1\0\6s\25<plug>(vsnip-expand)\n<c-l>\28<plug>(vsnip-jump-prev)\n<c-k>\28<plug>(vsnip-jump-next)\n<c-j>\6i\27<plug>(vsnip-cut-text)\ass#<plug>(vsnip-select-text)<esc>\asy\6v\20nvim_set_keymap\bapi\bvue\1\0\0\1\4\0\0\thtml\bcss\15javascript\20vsnip_filetypes\28~/.config/nvim/snippets\vexpand\afn\22vsnip_snippet_dir\6g\bvim\0", "config", "vim-vsnip")
time([[Config for vim-vsnip]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n�\a\0\0\a\0\29\00046\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\1)\2\1\0=\2\4\0016\1\2\0009\1\3\0014\2\4\0005\3\a\0005\4\6\0=\4\b\3>\3\1\0025\3\t\0009\4\n\0'\6\v\0B\4\2\2=\4\f\3>\3\2\0025\3\r\0>\3\3\2=\2\5\0016\1\2\0009\1\3\0015\2\15\0=\2\14\0016\1\2\0009\1\3\0015\2\17\0=\2\16\0016\1\2\0009\1\18\0019\1\19\1'\3\20\0'\4\21\0'\5\22\0005\6\23\0B\1\5\0016\1\2\0009\1\18\0019\1\19\1'\3\20\0'\4\24\0'\5\25\0005\6\26\0B\1\5\0016\1\2\0009\1\27\1'\3\28\0B\1\2\1K\0\1\0�\2        autocmd BufEnter NvimTree setlocal statusline=%#Normal#\n\n        highlight NvimTreeIndentMarker ctermfg=magenta\n        highlight NvimTreeFolderIcon ctermfg=blue\n        highlight NvimTreeFolderName cterm=bold ctermfg=cyan\n        highlight NvimTreeGitDirty cterm=bold ctermfg=red\n        highlight NvimTreeGitStaged cterm=bold ctermfg=yellow\n    \bcmd\1\0\1\fnoremap\2\30<cmd>NvimTreeFindFile<cr>\6\\\1\0\1\fnoremap\2\28<cmd>NvimTreeToggle<cr>\t<cr>\6n\20nvim_set_keymap\bapi\1\0\1\fdefault\b\20nvim_tree_icons\1\0\4\18folder_arrows\3\1\bgit\3\0\ffolders\3\1\nfiles\3\1\25nvim_tree_show_icons\1\0\2\acb\5\bkey\n<c-x>\acb\nsplit\23nvim_tree_callback\1\0\1\bkey\n<c-s>\bkey\1\0\1\acb\28<cmd>NvimTreeToggle<cr>\1\3\0\0\t<cr>\6\\\23nvim_tree_bindings\21nvim_tree_git_hl\6g\bvim\21nvim-tree.config\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
