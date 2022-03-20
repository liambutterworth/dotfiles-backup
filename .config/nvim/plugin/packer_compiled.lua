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
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
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
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-calc"] = {
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/cmp-calc",
    url = "https://github.com/hrsh7th/cmp-calc"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n�\4\0\0\6\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\14\0005\4\4\0005\5\3\0=\5\5\0045\5\6\0=\5\a\0045\5\b\0=\5\t\0045\5\n\0=\5\v\0045\5\f\0=\5\r\4=\4\15\3B\1\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\4\ttext\b│\vlinehl\21GitSignsChangeLn\nnumhl\21GitSignsChangeNr\ahl\25GitSignsChangeDelete\14topdelete\1\0\4\ttext\b│\vlinehl\21GitSignsDeleteLn\nnumhl\21GitSignsDeleteNr\ahl\19GitSignsDelete\vdelete\1\0\4\ttext\b│\vlinehl\21GitSignsDeleteLn\nnumhl\21GitSignsDeleteNr\ahl\19GitSignsDelete\vchange\1\0\4\ttext\b│\vlinehl\21GitSignsChangeLn\nnumhl\21GitSignsChangeNr\ahl\19GitSignsChange\badd\1\0\0\1\0\4\ttext\b│\vlinehl\18GitSignsAddLn\nnumhl\18GitSignsAddNr\ahl\16GitSignsAdd\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n�\1\0\0\a\0\a\0\0176\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\4\0B\2\2\0019\2\3\1B\2\1\0019\2\5\0006\4\0\0'\6\6\0B\4\2\0A\2\0\1K\0\1\0%nvim-autopairs.rules.endwise-lua\14add_rules\1\0\1\rcheck_ts\2\nsetup\20nvim-ts-autotag\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvim�\3\1\0\t\0\30\0:6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\b\0004\4\6\0005\5\3\0>\5\1\0045\5\4\0>\5\2\0045\5\5\0>\5\3\0045\5\6\0>\5\4\0045\5\a\0>\5\5\4=\4\t\0035\4\v\0003\5\n\0=\5\f\4=\4\r\0035\4\17\0009\5\14\0009\5\15\0055\a\16\0B\5\2\2=\5\18\0049\5\14\0009\5\19\5)\a��B\5\2\2=\5\20\0049\5\14\0009\5\19\5)\a\4\0B\5\2\2=\5\21\0049\5\14\0009\5\22\5B\5\1\2=\5\23\0049\5\14\0009\a\14\0009\a\24\aB\a\1\0025\b\25\0B\5\3\2=\5\26\0049\5\14\0009\a\14\0009\a\27\aB\a\1\0025\b\28\0B\5\3\2=\5\29\4=\4\14\3B\1\2\1K\0\1\0\n<Tab>\1\3\0\0\6i\6s\21select_next_item\f<S-Tab>\1\3\0\0\6i\6s\21select_prev_item\n<C-h>\nclose\n<C-p>\n<C-n>\16scroll_docs\t<CR>\1\0\0\1\0\1\vselect\2\fconfirm\fmapping\fsnippet\vexpand\1\0\0\0\fsources\1\0\0\1\0\1\tname\nvsnip\1\0\1\tname\tpath\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\1\0\1\tname\vbuffer\nsetup\bcmp\frequire\0" },
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n�\5\0\2\t\0\28\0D6\2\0\0009\2\1\2'\3\3\0=\3\2\0026\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\a\0'\a\b\0005\b\t\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\n\0'\a\v\0005\b\f\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\r\0'\a\14\0005\b\15\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\16\0'\a\17\0005\b\18\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\19\0'\a\20\0005\b\21\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\22\0'\a\23\0005\b\24\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\25\0'\a\26\0005\b\27\0B\2\6\1K\0\1\0\1\0\1\vsilent\2*<cmd>lua vim.lsp.buf.references()<cr>\agr\1\0\1\vsilent\2-<cmd>lua vim.diagnostic.open_float()<cr>\agi\1\0\1\vsilent\2,<cmd>lua vim.diagnostic.goto_next()<cr>\a]d\1\0\1\vsilent\2,<cmd>lua vim.diagnostic.goto_prev()<cr>\a[d\1\0\1\vsilent\2+<cmd>lua vim.lsp.buf.declaration()<cr>\n<c-}>\1\0\1\vsilent\2*<cmd>lua vim.lsp.buf.definition()<cr>\n<c-]>\1\0\1\vsilent\2:<cmd>lua vim.lsp.buf.hover({ border = \"single\" })<cr>\6K\6n\24nvim_buf_set_keymap\bapi\27v:lua.vim.lsp.omnifunc\romnifunc\abo\bvim�\5\1\0\14\0&\0K6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\0019\1\5\1B\1\1\0023\2\6\0005\3\a\0006\4\b\0\18\6\3\0B\4\2\4H\a\v�'\t\t\0\18\n\a\0&\t\n\t6\n\2\0009\n\n\n9\n\v\n\18\f\t\0005\r\f\0=\b\r\r=\t\14\rB\n\3\1F\a\3\3R\a�9\4\15\0019\4\16\0049\4\17\4+\5\2\0=\5\18\0049\4\15\0019\4\16\0049\4\17\0045\5\21\0005\6\20\0=\6\22\5=\5\19\0049\4\23\0009\4\24\0045\6\25\0=\1\26\6B\4\2\0019\4\27\0009\4\24\0045\6\28\0=\1\26\6=\2\29\6B\4\2\0019\4\30\0009\4\24\0045\6\31\0=\1\26\6=\2\29\6B\4\2\0019\4 \0009\4\24\0045\6!\0=\1\26\6=\2\29\6B\4\2\0019\4\"\0009\4\24\0045\6#\0=\1\26\6=\2\29\6B\4\2\0019\4$\0009\4\24\0045\6%\0=\1\26\6=\2\29\6B\4\2\1K\0\1\0\1\0\0\17intelephense\1\0\0\nvuels\1\0\0\vjsonls\1\0\0\ncssls\14on_attach\1\0\0\thtml\17capabilities\1\0\0\nsetup\18rust_analyzer\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\19completionItem\15completion\17textDocument\vtexthl\ttext\1\0\1\nnumhl\5\16sign_define\afn\19DiagnosticSign\npairs\1\0\4\tHint\b●\tWarn\b●\tInfo\b●\nError\b●\0\29make_client_capabilities\rprotocol\blsp\bvim\14lspconfig\frequire\0" },
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n�\14\0\0\f\0Z\0�\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0016\2\4\0009\2\5\2)\3\0\0=\3\6\0026\2\4\0009\2\5\0025\3\b\0=\3\a\0029\2\t\0005\4\n\0005\5\v\0=\5\f\0045\5N\0005\6\r\0004\a \0005\b\14\0\18\t\1\0'\v\15\0B\t\2\2=\t\16\b>\b\1\a5\b\17\0\18\t\1\0'\v\18\0B\t\2\2=\t\16\b>\b\2\a5\b\19\0\18\t\1\0'\v\20\0B\t\2\2=\t\16\b>\b\3\a5\b\21\0\18\t\1\0'\v\22\0B\t\2\2=\t\16\b>\b\4\a5\b\23\0\18\t\1\0'\v\24\0B\t\2\2=\t\16\b>\b\5\a5\b\25\0\18\t\1\0'\v\26\0B\t\2\2=\t\16\b>\b\6\a5\b\27\0\18\t\1\0'\v\28\0B\t\2\2=\t\16\b>\b\a\a5\b\29\0\18\t\1\0'\v\30\0B\t\2\2=\t\16\b>\b\b\a5\b\31\0\18\t\1\0'\v \0B\t\2\2=\t\16\b>\b\t\a5\b!\0\18\t\1\0'\v\"\0B\t\2\2=\t\16\b>\b\n\a5\b#\0\18\t\1\0'\v$\0B\t\2\2=\t\16\b>\b\v\a5\b%\0\18\t\1\0'\v&\0B\t\2\2=\t\16\b>\b\f\a5\b'\0\18\t\1\0'\v(\0B\t\2\2=\t\16\b>\b\r\a5\b)\0\18\t\1\0'\v*\0B\t\2\2=\t\16\b>\b\14\a5\b+\0\18\t\1\0'\v,\0B\t\2\2=\t\16\b>\b\15\a5\b-\0\18\t\1\0'\v.\0B\t\2\2=\t\16\b>\b\16\a5\b/\0\18\t\1\0'\v0\0B\t\2\2=\t\16\b>\b\17\a5\b1\0\18\t\1\0'\v2\0B\t\2\2=\t\16\b>\b\18\a5\b3\0\18\t\1\0'\v4\0B\t\2\2=\t\16\b>\b\19\a5\b5\0\18\t\1\0'\v6\0B\t\2\2=\t\16\b>\b\20\a5\b7\0\18\t\1\0'\v8\0B\t\2\2=\t\16\b>\b\21\a5\b9\0\18\t\1\0'\v:\0B\t\2\2=\t\16\b>\b\22\a5\b;\0\18\t\1\0'\v<\0B\t\2\2=\t\16\b>\b\23\a5\b=\0\18\t\1\0'\v>\0B\t\2\2=\t\16\b>\b\24\a5\b?\0\18\t\1\0'\v@\0B\t\2\2=\t\16\b>\b\25\a5\bA\0\18\t\1\0'\vB\0B\t\2\2=\t\16\b>\b\26\a5\bC\0\18\t\1\0'\vD\0B\t\2\2=\t\16\b>\b\27\a5\bE\0\18\t\1\0'\vF\0B\t\2\2=\t\16\b>\b\28\a5\bG\0\18\t\1\0'\vH\0B\t\2\2=\t\16\b>\b\29\a5\bI\0\18\t\1\0'\vJ\0B\t\2\2=\t\16\b>\b\30\a5\bK\0\18\t\1\0'\vL\0B\t\2\2=\t\16\b>\b\31\a=\aM\6=\6O\5=\5P\4B\2\2\0016\2\4\0009\2Q\0029\2R\2'\4S\0'\5T\0'\6U\0005\aV\0B\2\5\0016\2\4\0009\2Q\0029\2R\2'\4S\0'\5W\0'\6X\0005\aY\0B\2\5\1K\0\1\0\1\0\1\fnoremap\2\30<cmd>NvimTreeFindFile<cr>\n<cr>f\1\0\1\fnoremap\2\28<cmd>NvimTreeToggle<cr>\r<cr><cr>\6n\20nvim_set_keymap\bapi\tview\rmappings\1\0\0\tlist\16toggle_help\1\0\1\bkey\6?\vdir_up\1\0\1\bkey\6.\nclose\1\0\1\bkey\6q\16system_open\1\0\1\bkey\6s\18next_git_item\1\0\1\bkey\a]c\18prev_git_item\1\0\1\bkey\a[c\23copy_absolute_path\1\0\1\bkey\agy\14copy_path\1\0\1\bkey\6Y\14copy_name\1\0\1\bkey\6y\npaste\1\0\1\bkey\6v\bcut\1\0\1\bkey\6x\tcopy\1\0\1\bkey\6c\16full_rename\1\0\1\bkey\n<C-r>\vrename\1\0\1\bkey\6r\ntrash\1\0\1\bkey\6D\vremove\1\0\1\bkey\6d\vcreate\1\0\1\bkey\6a\frefresh\1\0\1\bkey\6R\20toggle_dotfiles\1\0\1\bkey\6H\19toggle_ignored\1\0\1\bkey\6I\17last_sibling\1\0\1\bkey\6J\18first_sibling\1\0\1\bkey\6K\17next_sibling\1\0\1\bkey\6>\17prev_sibling\1\0\1\bkey\6<\vtabnew\1\0\1\bkey\n<C-t>\nsplit\1\0\1\bkey\n<C-x>\vvsplit\1\0\1\bkey\n<C-v>\15close_node\1\0\1\bkey\6P\16parent_node\1\0\1\bkey\6p\acd\1\0\1\bkey\6O\acb\tedit\1\0\1\bkey\6o\1\0\1\16custom_only\2\bgit\1\0\2\vignore\1\venable\1\1\0\2\17hijack_netrw\2\18disable_netrw\2\nsetup\1\0\1\fdefault\b\20nvim_tree_icons\21nvim_tree_git_hl\6g\bvim\23nvim_tree_callback\21nvim-tree.config\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n�\4\0\0\a\0\25\0\0296\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\6\0'\5\a\0005\6\b\0B\1\5\0019\1\t\0005\3\v\0005\4\n\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\22\0005\5\19\0005\6\20\0=\6\21\5=\5\23\4=\4\24\3B\1\2\1K\0\1\0\16textobjects\vselect\1\0\0\fkeymaps\1\0\f\aab\17@block.outer\aia\20@paramter.inner\aac\23@conditional.outer\aal\16@loop.outer\aaf\20@function.outer\aib\17@block.inner\aaa\21@parameter.outer\aif\20@function.inner\ail\16@loop.inner\aiC\17@class.inner\aic\23@conditional.inner\aaC\17@class.outer\1\0\2\14lookahead\2\venable\2\14autopairs\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\26context_commentstring\1\0\0\1\0\1\venable\2\nsetup\1\0\1\fnoremap\2(:TSHighlightCapturesUnderCursor<cr>\n<f10>\6n\20nvim_set_keymap\bapi\bvim\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/joosepalviste/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n�%\0\0\t\0�\1\0�\0026\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\21\0005\5\4\0005\6\6\0005\a\5\0=\a\a\6=\6\b\0055\6\t\0=\6\n\0055\6\16\0005\a\f\0009\b\v\1=\b\r\a9\b\14\1=\b\15\a=\a\17\0065\a\18\0009\b\14\1=\b\15\a=\a\19\6=\6\20\5=\5\22\0045\5\27\0005\6\23\0005\a\25\0005\b\24\0=\b\17\a5\b\26\0=\b\19\a=\a\20\6=\6\28\0055\6\30\0005\a\29\0=\a\31\6=\6 \5=\5!\4B\2\2\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5%\0'\6&\0005\a'\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5(\0'\6)\0005\a*\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5+\0'\6,\0005\a-\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5.\0'\6/\0005\a0\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\0051\0'\0062\0005\a3\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\0054\0'\0065\0005\a6\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\0057\0'\0068\0005\a9\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5:\0'\6;\0005\a<\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5=\0'\6>\0005\a?\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5@\0'\6A\0005\aB\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5C\0'\6D\0005\aE\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5F\0'\6G\0005\aH\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5I\0'\6J\0005\aK\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5L\0'\6M\0005\aN\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5O\0'\6P\0005\aQ\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5R\0'\6S\0005\aT\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5U\0'\6V\0005\aW\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5X\0'\6Y\0005\aZ\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5[\0'\6\\\0005\a]\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5^\0'\6_\0005\a`\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5a\0'\6b\0005\ac\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5d\0'\6e\0005\af\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5g\0'\6h\0005\ai\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5j\0'\6k\0005\al\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5m\0'\6n\0005\ao\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5p\0'\6q\0005\ar\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5s\0'\6t\0005\au\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5v\0'\6w\0005\ax\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5y\0'\6z\0005\a{\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5|\0'\6}\0005\a~\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5\0'\6�\0005\a�\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5�\0'\6�\0005\a�\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5�\0'\6�\0005\a�\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5�\0'\6�\0005\a�\0B\2\5\0016\2\"\0009\2�\2'\4�\0B\2\2\1K\0\1\0�\t        highlight TelescopeMatching cterm=bold ctermfg=green\n        highlight TelescopeMultiSelection ctermfg=magenta\n        highlight TelescopeNormal cterm=none ctermfg=white\n        highlight TelescopePromptPrefix cterm=bold ctermfg=magenta\n        highlight TelescopeResultsDiffChange ctermbg=none ctermfg=yellow\n        highlight TelescopeResultsDiffAdd ctermbg=none ctermfg=green\n        highlight TelescopeResultsDiffDelete ctermbg=none ctermfg=red\n        highlight TelescopeResultsDiffUntracked ctermbg=none ctermfg=red\n        highlight TelescopeResultsClass ctermfg=blue\n        highlight TelescopeResultsConstant ctermfg=magenta\n        highlight TelescopeResultsField ctermfg=blue\n        highlight TelescopeResultsIdentifier ctermfg=yellow\n        highlight TelescopeResultsFunction ctermfg=cyan\n        highlight TelescopeResultsMethod ctermfg=cyan\n        highlight TelescopeResultsOperator ctermfg=blue\n        highlight TelescopeResultsStruct ctermfg=yellow\n        highlight TelescopeResultsVariable ctermfg=blue\n        highlight TelescopeSelection cterm=bold ctermbg=none ctermfg=white\n        highlight TelescopeSelectionCaret cterm=bold ctermbg=none ctermfg=magenta\n    \bcmd\1\0\1\fnoremap\2!<cmd>Telescope filetypes<cr>\r<space>t\1\0\1\fnoremap\2%<cmd>Telescope spell_suggest<cr>\r<space>s\1\0\1\fnoremap\2 <cmd>Telescope quickfix<cr>\r<space>q\1\0\1\fnoremap\2#<cmd>Telescope vim_options<cr>\r<space>o\1\0\1\fnoremap\2!<cmd>Telescope man_pages<cr>\r<space>m\1\0\1\fnoremap\2-<cmd>Telescope lsp_workspace_symbols<cr>\14<space>lw\1\0\1\fnoremap\2,<cmd>Telescope lsp_document_symbols<cr>\14<space>ls\1\0\1\fnoremap\2&<cmd>Telescope lsp_references<cr>\14<space>lr\1\0\1\fnoremap\2'<cmd>Telescope lsp_definitions<cr>\14<space>lk\1\0\1\fnoremap\2+<cmd>Telescope lsp_implementations<cr>\14<space>li\1\0\1\fnoremap\0020<cmd>Telescope lsp_document_diagnostics<cr>\14<space>ld\1\0\1\fnoremap\2(<cmd>Telescope lsp_code_actions<cr>\14<space>la\1\0\1\fnoremap\2!<cmd>Telescope git_stash<cr>\14<space>gt\1\0\1\fnoremap\2$<cmd>Telescope git_branches<cr>\14<space>gb\1\0\1\fnoremap\2$<cmd>Telescope git_bcommits<cr>\14<space>gc\1\0\1\fnoremap\2#<cmd>Telescope git_commits<cr>\14<space>gl\1\0\1\fnoremap\2\"<cmd>Telescope git_status<cr>\14<space>gs\1\0\1\fnoremap\2!<cmd>Telescope git_files<cr>\14<space>gf\1\0\1\fnoremap\2 <cmd>Telescope commands<cr>\r<space>c\1\0\1\fnoremap\2!<cmd>Telescope help_tags<cr>\r<space>?\1\0\1\fnoremap\2&<cmd>Telescope search_history<cr>\r<space>/\1\0\1\fnoremap\0026<cmd>Telescope live_grep grep_open_files=true<cr>\r<space>l\1\0\1\fnoremap\0021<cmd>Telescope live_grep search_dirs=%:h<cr>\r<space>k\1\0\1\fnoremap\2!<cmd>Telescope live_grep<cr>\r<space>j\1\0\1\fnoremap\2!<cmd>Telescope registers<cr>\r<space>\"\1\0\1\fnoremap\2\29<cmd>Telescope marks<cr>\r<space>'\1\0\1\fnoremap\2'<cmd>Telescope command_history<cr>\r<space>:\1\0\1\fnoremap\2#<cmd>Telescope buffer_tags<cr>\r<space>}\1\0\1\fnoremap\2\28<cmd>Telescope tags<cr>\r<space>]\1\0\1\fnoremap\2 <cmd>Telescope tagstack<cr>\r<space>[\1\0\1\fnoremap\2*<cmd>Telescope find_files cwd=%:h<cr>\r<space>.\1\0\1\fnoremap\2 <cmd>Telescope jumplist<cr>\17<space><tab>\1\0\1\fnoremap\2\31<cmd>Telescope buffers<cr>\16<space><bs>\1\0\1\fnoremap\2\"<cmd>Telescope find_files<cr>\19<space><space>\20nvim_set_keymap\bapi\bvim\fpickers\14live_grep\17path_display\1\0\0\1\0\1\fshorten\3\1\fbuffers\1\0\0\1\0\1\n<c-d>\18delete_buffer\1\0\0\1\0\1\n<c-d>\18delete_buffer\1\0\1\rsort_mru\2\rdefaults\1\0\0\rmappings\6n\1\0\1\n<c-x>\1\6i\1\0\0\n<c-s>\15file_split\n<c-f>\1\0\1\n<c-x>\1\21toggle_selection\16borderchars\1\t\0\0\b─\b│\b─\b│\b┌\b┐\b┘\b└\18layout_config\15horizontal\1\0\0\1\0\1\20prompt_position\btop\1\0\3\20selection_caret\t❯ \18prompt_prefix\t❯ \21sorting_strategy\14ascending\nsetup\22telescope.actions\14telescope\frequire\0" },
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-abolish"] = {
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/vim-abolish",
    url = "https://github.com/tpope/vim-abolish"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-easy-align"] = {
    config = { "\27LJ\2\n|\0\0\6\0\a\0\0176\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0004\5\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\6\0'\3\4\0'\4\5\0004\5\0\0B\0\5\1K\0\1\0\6x\22<plug>(EasyAlign)\aga\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/vim-easy-align",
    url = "https://github.com/junegunn/vim-easy-align"
  },
  ["vim-eunuch"] = {
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/vim-eunuch",
    url = "https://github.com/tpope/vim-eunuch"
  },
  ["vim-floaterm"] = {
    config = { "\27LJ\2\n�\3\0\0\3\0\18\1%6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0*\1\0\0=\1\4\0006\0\0\0009\0\1\0*\1\0\0=\1\5\0006\0\0\0009\0\1\0'\1\a\0=\1\6\0006\0\0\0009\0\1\0'\1\t\0=\1\b\0006\0\0\0009\0\1\0'\1\v\0=\1\n\0006\0\0\0009\0\1\0'\1\r\0=\1\f\0006\0\0\0009\0\1\0'\1\15\0=\1\14\0006\0\0\0009\0\16\0'\2\17\0B\0\2\1K\0\1\0B        highlight FloatermBorder ctermbg=none guibg=none\n    \bcmd\15<c-\\><c-]>\25floaterm_keymap_next\15<c-\\><c-[>\25floaterm_keymap_prev\14<c-\\><bs>\25floaterm_keymap_kill\14<c-\\><cr>\24floaterm_keymap_new\15<c-\\><c-\\>\27floaterm_keymap_toggle\19floaterm_width\20floaterm_height\tfish\19floaterm_shell\6g\bvim��̙\19����\3\0" },
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/vim-floaterm",
    url = "https://github.com/voldikss/vim-floaterm"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/vim-unimpaired",
    url = "https://github.com/tpope/vim-unimpaired"
  },
  ["vim-vsnip"] = {
    config = { "\27LJ\2\n�\4\0\0\6\0\25\0G6\0\0\0009\0\1\0006\1\0\0009\1\3\0019\1\4\1'\3\5\0B\1\2\2=\1\2\0006\0\0\0009\0\1\0005\1\b\0005\2\a\0=\2\t\1=\1\6\0006\0\0\0009\0\n\0009\0\v\0'\2\f\0'\3\r\0'\4\14\0004\5\0\0B\0\5\0016\0\0\0009\0\n\0009\0\v\0'\2\f\0'\3\15\0'\4\16\0004\5\0\0B\0\5\0016\0\0\0009\0\n\0009\0\v\0'\2\17\0'\3\18\0'\4\19\0004\5\0\0B\0\5\0016\0\0\0009\0\n\0009\0\v\0'\2\17\0'\3\20\0'\4\21\0004\5\0\0B\0\5\0016\0\0\0009\0\n\0009\0\v\0'\2\17\0'\3\22\0'\4\23\0004\5\0\0B\0\5\0016\0\0\0009\0\n\0009\0\v\0'\2\24\0'\3\18\0'\4\19\0004\5\0\0B\0\5\0016\0\0\0009\0\n\0009\0\v\0'\2\24\0'\3\20\0'\4\21\0004\5\0\0B\0\5\1K\0\1\0\6s\25<plug>(vsnip-expand)\n<c-l>\28<plug>(vsnip-jump-prev)\n<c-k>\28<plug>(vsnip-jump-next)\n<c-j>\6i\27<plug>(vsnip-cut-text)\ass#<plug>(vsnip-select-text)<esc>\asy\6v\20nvim_set_keymap\bapi\bvue\1\0\0\1\4\0\0\thtml\bcss\15javascript\20vsnip_filetypes\28~/.config/nvim/snippets\vexpand\afn\22vsnip_snippet_dir\6g\bvim\0" },
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: vim-easy-align
time([[Config for vim-easy-align]], true)
try_loadstring("\27LJ\2\n|\0\0\6\0\a\0\0176\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0004\5\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\6\0'\3\4\0'\4\5\0004\5\0\0B\0\5\1K\0\1\0\6x\22<plug>(EasyAlign)\aga\6n\20nvim_set_keymap\bapi\bvim\0", "config", "vim-easy-align")
time([[Config for vim-easy-align]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n�\5\0\2\t\0\28\0D6\2\0\0009\2\1\2'\3\3\0=\3\2\0026\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\a\0'\a\b\0005\b\t\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\n\0'\a\v\0005\b\f\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\r\0'\a\14\0005\b\15\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\16\0'\a\17\0005\b\18\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\19\0'\a\20\0005\b\21\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\22\0'\a\23\0005\b\24\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\25\0'\a\26\0005\b\27\0B\2\6\1K\0\1\0\1\0\1\vsilent\2*<cmd>lua vim.lsp.buf.references()<cr>\agr\1\0\1\vsilent\2-<cmd>lua vim.diagnostic.open_float()<cr>\agi\1\0\1\vsilent\2,<cmd>lua vim.diagnostic.goto_next()<cr>\a]d\1\0\1\vsilent\2,<cmd>lua vim.diagnostic.goto_prev()<cr>\a[d\1\0\1\vsilent\2+<cmd>lua vim.lsp.buf.declaration()<cr>\n<c-}>\1\0\1\vsilent\2*<cmd>lua vim.lsp.buf.definition()<cr>\n<c-]>\1\0\1\vsilent\2:<cmd>lua vim.lsp.buf.hover({ border = \"single\" })<cr>\6K\6n\24nvim_buf_set_keymap\bapi\27v:lua.vim.lsp.omnifunc\romnifunc\abo\bvim�\5\1\0\14\0&\0K6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\0019\1\5\1B\1\1\0023\2\6\0005\3\a\0006\4\b\0\18\6\3\0B\4\2\4H\a\v�'\t\t\0\18\n\a\0&\t\n\t6\n\2\0009\n\n\n9\n\v\n\18\f\t\0005\r\f\0=\b\r\r=\t\14\rB\n\3\1F\a\3\3R\a�9\4\15\0019\4\16\0049\4\17\4+\5\2\0=\5\18\0049\4\15\0019\4\16\0049\4\17\0045\5\21\0005\6\20\0=\6\22\5=\5\19\0049\4\23\0009\4\24\0045\6\25\0=\1\26\6B\4\2\0019\4\27\0009\4\24\0045\6\28\0=\1\26\6=\2\29\6B\4\2\0019\4\30\0009\4\24\0045\6\31\0=\1\26\6=\2\29\6B\4\2\0019\4 \0009\4\24\0045\6!\0=\1\26\6=\2\29\6B\4\2\0019\4\"\0009\4\24\0045\6#\0=\1\26\6=\2\29\6B\4\2\0019\4$\0009\4\24\0045\6%\0=\1\26\6=\2\29\6B\4\2\1K\0\1\0\1\0\0\17intelephense\1\0\0\nvuels\1\0\0\vjsonls\1\0\0\ncssls\14on_attach\1\0\0\thtml\17capabilities\1\0\0\nsetup\18rust_analyzer\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\19completionItem\15completion\17textDocument\vtexthl\ttext\1\0\1\nnumhl\5\16sign_define\afn\19DiagnosticSign\npairs\1\0\4\tHint\b●\tWarn\b●\tInfo\b●\nError\b●\0\29make_client_capabilities\rprotocol\blsp\bvim\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n�\1\0\0\a\0\a\0\0176\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\4\0B\2\2\0019\2\3\1B\2\1\0019\2\5\0006\4\0\0'\6\6\0B\4\2\0A\2\0\1K\0\1\0%nvim-autopairs.rules.endwise-lua\14add_rules\1\0\1\rcheck_ts\2\nsetup\20nvim-ts-autotag\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n�\14\0\0\f\0Z\0�\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0016\2\4\0009\2\5\2)\3\0\0=\3\6\0026\2\4\0009\2\5\0025\3\b\0=\3\a\0029\2\t\0005\4\n\0005\5\v\0=\5\f\0045\5N\0005\6\r\0004\a \0005\b\14\0\18\t\1\0'\v\15\0B\t\2\2=\t\16\b>\b\1\a5\b\17\0\18\t\1\0'\v\18\0B\t\2\2=\t\16\b>\b\2\a5\b\19\0\18\t\1\0'\v\20\0B\t\2\2=\t\16\b>\b\3\a5\b\21\0\18\t\1\0'\v\22\0B\t\2\2=\t\16\b>\b\4\a5\b\23\0\18\t\1\0'\v\24\0B\t\2\2=\t\16\b>\b\5\a5\b\25\0\18\t\1\0'\v\26\0B\t\2\2=\t\16\b>\b\6\a5\b\27\0\18\t\1\0'\v\28\0B\t\2\2=\t\16\b>\b\a\a5\b\29\0\18\t\1\0'\v\30\0B\t\2\2=\t\16\b>\b\b\a5\b\31\0\18\t\1\0'\v \0B\t\2\2=\t\16\b>\b\t\a5\b!\0\18\t\1\0'\v\"\0B\t\2\2=\t\16\b>\b\n\a5\b#\0\18\t\1\0'\v$\0B\t\2\2=\t\16\b>\b\v\a5\b%\0\18\t\1\0'\v&\0B\t\2\2=\t\16\b>\b\f\a5\b'\0\18\t\1\0'\v(\0B\t\2\2=\t\16\b>\b\r\a5\b)\0\18\t\1\0'\v*\0B\t\2\2=\t\16\b>\b\14\a5\b+\0\18\t\1\0'\v,\0B\t\2\2=\t\16\b>\b\15\a5\b-\0\18\t\1\0'\v.\0B\t\2\2=\t\16\b>\b\16\a5\b/\0\18\t\1\0'\v0\0B\t\2\2=\t\16\b>\b\17\a5\b1\0\18\t\1\0'\v2\0B\t\2\2=\t\16\b>\b\18\a5\b3\0\18\t\1\0'\v4\0B\t\2\2=\t\16\b>\b\19\a5\b5\0\18\t\1\0'\v6\0B\t\2\2=\t\16\b>\b\20\a5\b7\0\18\t\1\0'\v8\0B\t\2\2=\t\16\b>\b\21\a5\b9\0\18\t\1\0'\v:\0B\t\2\2=\t\16\b>\b\22\a5\b;\0\18\t\1\0'\v<\0B\t\2\2=\t\16\b>\b\23\a5\b=\0\18\t\1\0'\v>\0B\t\2\2=\t\16\b>\b\24\a5\b?\0\18\t\1\0'\v@\0B\t\2\2=\t\16\b>\b\25\a5\bA\0\18\t\1\0'\vB\0B\t\2\2=\t\16\b>\b\26\a5\bC\0\18\t\1\0'\vD\0B\t\2\2=\t\16\b>\b\27\a5\bE\0\18\t\1\0'\vF\0B\t\2\2=\t\16\b>\b\28\a5\bG\0\18\t\1\0'\vH\0B\t\2\2=\t\16\b>\b\29\a5\bI\0\18\t\1\0'\vJ\0B\t\2\2=\t\16\b>\b\30\a5\bK\0\18\t\1\0'\vL\0B\t\2\2=\t\16\b>\b\31\a=\aM\6=\6O\5=\5P\4B\2\2\0016\2\4\0009\2Q\0029\2R\2'\4S\0'\5T\0'\6U\0005\aV\0B\2\5\0016\2\4\0009\2Q\0029\2R\2'\4S\0'\5W\0'\6X\0005\aY\0B\2\5\1K\0\1\0\1\0\1\fnoremap\2\30<cmd>NvimTreeFindFile<cr>\n<cr>f\1\0\1\fnoremap\2\28<cmd>NvimTreeToggle<cr>\r<cr><cr>\6n\20nvim_set_keymap\bapi\tview\rmappings\1\0\0\tlist\16toggle_help\1\0\1\bkey\6?\vdir_up\1\0\1\bkey\6.\nclose\1\0\1\bkey\6q\16system_open\1\0\1\bkey\6s\18next_git_item\1\0\1\bkey\a]c\18prev_git_item\1\0\1\bkey\a[c\23copy_absolute_path\1\0\1\bkey\agy\14copy_path\1\0\1\bkey\6Y\14copy_name\1\0\1\bkey\6y\npaste\1\0\1\bkey\6v\bcut\1\0\1\bkey\6x\tcopy\1\0\1\bkey\6c\16full_rename\1\0\1\bkey\n<C-r>\vrename\1\0\1\bkey\6r\ntrash\1\0\1\bkey\6D\vremove\1\0\1\bkey\6d\vcreate\1\0\1\bkey\6a\frefresh\1\0\1\bkey\6R\20toggle_dotfiles\1\0\1\bkey\6H\19toggle_ignored\1\0\1\bkey\6I\17last_sibling\1\0\1\bkey\6J\18first_sibling\1\0\1\bkey\6K\17next_sibling\1\0\1\bkey\6>\17prev_sibling\1\0\1\bkey\6<\vtabnew\1\0\1\bkey\n<C-t>\nsplit\1\0\1\bkey\n<C-x>\vvsplit\1\0\1\bkey\n<C-v>\15close_node\1\0\1\bkey\6P\16parent_node\1\0\1\bkey\6p\acd\1\0\1\bkey\6O\acb\tedit\1\0\1\bkey\6o\1\0\1\16custom_only\2\bgit\1\0\2\vignore\1\venable\1\1\0\2\17hijack_netrw\2\18disable_netrw\2\nsetup\1\0\1\fdefault\b\20nvim_tree_icons\21nvim_tree_git_hl\6g\bvim\23nvim_tree_callback\21nvim-tree.config\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n�\4\0\0\6\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\14\0005\4\4\0005\5\3\0=\5\5\0045\5\6\0=\5\a\0045\5\b\0=\5\t\0045\5\n\0=\5\v\0045\5\f\0=\5\r\4=\4\15\3B\1\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\4\ttext\b│\vlinehl\21GitSignsChangeLn\nnumhl\21GitSignsChangeNr\ahl\25GitSignsChangeDelete\14topdelete\1\0\4\ttext\b│\vlinehl\21GitSignsDeleteLn\nnumhl\21GitSignsDeleteNr\ahl\19GitSignsDelete\vdelete\1\0\4\ttext\b│\vlinehl\21GitSignsDeleteLn\nnumhl\21GitSignsDeleteNr\ahl\19GitSignsDelete\vchange\1\0\4\ttext\b│\vlinehl\21GitSignsChangeLn\nnumhl\21GitSignsChangeNr\ahl\19GitSignsChange\badd\1\0\0\1\0\4\ttext\b│\vlinehl\18GitSignsAddLn\nnumhl\18GitSignsAddNr\ahl\16GitSignsAdd\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: vim-vsnip
time([[Config for vim-vsnip]], true)
try_loadstring("\27LJ\2\n�\4\0\0\6\0\25\0G6\0\0\0009\0\1\0006\1\0\0009\1\3\0019\1\4\1'\3\5\0B\1\2\2=\1\2\0006\0\0\0009\0\1\0005\1\b\0005\2\a\0=\2\t\1=\1\6\0006\0\0\0009\0\n\0009\0\v\0'\2\f\0'\3\r\0'\4\14\0004\5\0\0B\0\5\0016\0\0\0009\0\n\0009\0\v\0'\2\f\0'\3\15\0'\4\16\0004\5\0\0B\0\5\0016\0\0\0009\0\n\0009\0\v\0'\2\17\0'\3\18\0'\4\19\0004\5\0\0B\0\5\0016\0\0\0009\0\n\0009\0\v\0'\2\17\0'\3\20\0'\4\21\0004\5\0\0B\0\5\0016\0\0\0009\0\n\0009\0\v\0'\2\17\0'\3\22\0'\4\23\0004\5\0\0B\0\5\0016\0\0\0009\0\n\0009\0\v\0'\2\24\0'\3\18\0'\4\19\0004\5\0\0B\0\5\0016\0\0\0009\0\n\0009\0\v\0'\2\24\0'\3\20\0'\4\21\0004\5\0\0B\0\5\1K\0\1\0\6s\25<plug>(vsnip-expand)\n<c-l>\28<plug>(vsnip-jump-prev)\n<c-k>\28<plug>(vsnip-jump-next)\n<c-j>\6i\27<plug>(vsnip-cut-text)\ass#<plug>(vsnip-select-text)<esc>\asy\6v\20nvim_set_keymap\bapi\bvue\1\0\0\1\4\0\0\thtml\bcss\15javascript\20vsnip_filetypes\28~/.config/nvim/snippets\vexpand\afn\22vsnip_snippet_dir\6g\bvim\0", "config", "vim-vsnip")
time([[Config for vim-vsnip]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n�\4\0\0\a\0\25\0\0296\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\6\0'\5\a\0005\6\b\0B\1\5\0019\1\t\0005\3\v\0005\4\n\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\22\0005\5\19\0005\6\20\0=\6\21\5=\5\23\4=\4\24\3B\1\2\1K\0\1\0\16textobjects\vselect\1\0\0\fkeymaps\1\0\f\aab\17@block.outer\aia\20@paramter.inner\aac\23@conditional.outer\aal\16@loop.outer\aaf\20@function.outer\aib\17@block.inner\aaa\21@parameter.outer\aif\20@function.inner\ail\16@loop.inner\aiC\17@class.inner\aic\23@conditional.inner\aaC\17@class.outer\1\0\2\14lookahead\2\venable\2\14autopairs\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\26context_commentstring\1\0\0\1\0\1\venable\2\nsetup\1\0\1\fnoremap\2(:TSHighlightCapturesUnderCursor<cr>\n<f10>\6n\20nvim_set_keymap\bapi\bvim\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n�%\0\0\t\0�\1\0�\0026\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\21\0005\5\4\0005\6\6\0005\a\5\0=\a\a\6=\6\b\0055\6\t\0=\6\n\0055\6\16\0005\a\f\0009\b\v\1=\b\r\a9\b\14\1=\b\15\a=\a\17\0065\a\18\0009\b\14\1=\b\15\a=\a\19\6=\6\20\5=\5\22\0045\5\27\0005\6\23\0005\a\25\0005\b\24\0=\b\17\a5\b\26\0=\b\19\a=\a\20\6=\6\28\0055\6\30\0005\a\29\0=\a\31\6=\6 \5=\5!\4B\2\2\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5%\0'\6&\0005\a'\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5(\0'\6)\0005\a*\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5+\0'\6,\0005\a-\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5.\0'\6/\0005\a0\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\0051\0'\0062\0005\a3\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\0054\0'\0065\0005\a6\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\0057\0'\0068\0005\a9\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5:\0'\6;\0005\a<\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5=\0'\6>\0005\a?\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5@\0'\6A\0005\aB\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5C\0'\6D\0005\aE\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5F\0'\6G\0005\aH\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5I\0'\6J\0005\aK\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5L\0'\6M\0005\aN\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5O\0'\6P\0005\aQ\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5R\0'\6S\0005\aT\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5U\0'\6V\0005\aW\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5X\0'\6Y\0005\aZ\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5[\0'\6\\\0005\a]\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5^\0'\6_\0005\a`\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5a\0'\6b\0005\ac\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5d\0'\6e\0005\af\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5g\0'\6h\0005\ai\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5j\0'\6k\0005\al\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5m\0'\6n\0005\ao\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5p\0'\6q\0005\ar\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5s\0'\6t\0005\au\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5v\0'\6w\0005\ax\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5y\0'\6z\0005\a{\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5|\0'\6}\0005\a~\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5\0'\6�\0005\a�\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5�\0'\6�\0005\a�\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5�\0'\6�\0005\a�\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5�\0'\6�\0005\a�\0B\2\5\0016\2\"\0009\2�\2'\4�\0B\2\2\1K\0\1\0�\t        highlight TelescopeMatching cterm=bold ctermfg=green\n        highlight TelescopeMultiSelection ctermfg=magenta\n        highlight TelescopeNormal cterm=none ctermfg=white\n        highlight TelescopePromptPrefix cterm=bold ctermfg=magenta\n        highlight TelescopeResultsDiffChange ctermbg=none ctermfg=yellow\n        highlight TelescopeResultsDiffAdd ctermbg=none ctermfg=green\n        highlight TelescopeResultsDiffDelete ctermbg=none ctermfg=red\n        highlight TelescopeResultsDiffUntracked ctermbg=none ctermfg=red\n        highlight TelescopeResultsClass ctermfg=blue\n        highlight TelescopeResultsConstant ctermfg=magenta\n        highlight TelescopeResultsField ctermfg=blue\n        highlight TelescopeResultsIdentifier ctermfg=yellow\n        highlight TelescopeResultsFunction ctermfg=cyan\n        highlight TelescopeResultsMethod ctermfg=cyan\n        highlight TelescopeResultsOperator ctermfg=blue\n        highlight TelescopeResultsStruct ctermfg=yellow\n        highlight TelescopeResultsVariable ctermfg=blue\n        highlight TelescopeSelection cterm=bold ctermbg=none ctermfg=white\n        highlight TelescopeSelectionCaret cterm=bold ctermbg=none ctermfg=magenta\n    \bcmd\1\0\1\fnoremap\2!<cmd>Telescope filetypes<cr>\r<space>t\1\0\1\fnoremap\2%<cmd>Telescope spell_suggest<cr>\r<space>s\1\0\1\fnoremap\2 <cmd>Telescope quickfix<cr>\r<space>q\1\0\1\fnoremap\2#<cmd>Telescope vim_options<cr>\r<space>o\1\0\1\fnoremap\2!<cmd>Telescope man_pages<cr>\r<space>m\1\0\1\fnoremap\2-<cmd>Telescope lsp_workspace_symbols<cr>\14<space>lw\1\0\1\fnoremap\2,<cmd>Telescope lsp_document_symbols<cr>\14<space>ls\1\0\1\fnoremap\2&<cmd>Telescope lsp_references<cr>\14<space>lr\1\0\1\fnoremap\2'<cmd>Telescope lsp_definitions<cr>\14<space>lk\1\0\1\fnoremap\2+<cmd>Telescope lsp_implementations<cr>\14<space>li\1\0\1\fnoremap\0020<cmd>Telescope lsp_document_diagnostics<cr>\14<space>ld\1\0\1\fnoremap\2(<cmd>Telescope lsp_code_actions<cr>\14<space>la\1\0\1\fnoremap\2!<cmd>Telescope git_stash<cr>\14<space>gt\1\0\1\fnoremap\2$<cmd>Telescope git_branches<cr>\14<space>gb\1\0\1\fnoremap\2$<cmd>Telescope git_bcommits<cr>\14<space>gc\1\0\1\fnoremap\2#<cmd>Telescope git_commits<cr>\14<space>gl\1\0\1\fnoremap\2\"<cmd>Telescope git_status<cr>\14<space>gs\1\0\1\fnoremap\2!<cmd>Telescope git_files<cr>\14<space>gf\1\0\1\fnoremap\2 <cmd>Telescope commands<cr>\r<space>c\1\0\1\fnoremap\2!<cmd>Telescope help_tags<cr>\r<space>?\1\0\1\fnoremap\2&<cmd>Telescope search_history<cr>\r<space>/\1\0\1\fnoremap\0026<cmd>Telescope live_grep grep_open_files=true<cr>\r<space>l\1\0\1\fnoremap\0021<cmd>Telescope live_grep search_dirs=%:h<cr>\r<space>k\1\0\1\fnoremap\2!<cmd>Telescope live_grep<cr>\r<space>j\1\0\1\fnoremap\2!<cmd>Telescope registers<cr>\r<space>\"\1\0\1\fnoremap\2\29<cmd>Telescope marks<cr>\r<space>'\1\0\1\fnoremap\2'<cmd>Telescope command_history<cr>\r<space>:\1\0\1\fnoremap\2#<cmd>Telescope buffer_tags<cr>\r<space>}\1\0\1\fnoremap\2\28<cmd>Telescope tags<cr>\r<space>]\1\0\1\fnoremap\2 <cmd>Telescope tagstack<cr>\r<space>[\1\0\1\fnoremap\2*<cmd>Telescope find_files cwd=%:h<cr>\r<space>.\1\0\1\fnoremap\2 <cmd>Telescope jumplist<cr>\17<space><tab>\1\0\1\fnoremap\2\31<cmd>Telescope buffers<cr>\16<space><bs>\1\0\1\fnoremap\2\"<cmd>Telescope find_files<cr>\19<space><space>\20nvim_set_keymap\bapi\bvim\fpickers\14live_grep\17path_display\1\0\0\1\0\1\fshorten\3\1\fbuffers\1\0\0\1\0\1\n<c-d>\18delete_buffer\1\0\0\1\0\1\n<c-d>\18delete_buffer\1\0\1\rsort_mru\2\rdefaults\1\0\0\rmappings\6n\1\0\1\n<c-x>\1\6i\1\0\0\n<c-s>\15file_split\n<c-f>\1\0\1\n<c-x>\1\21toggle_selection\16borderchars\1\t\0\0\b─\b│\b─\b│\b┌\b┐\b┘\b└\18layout_config\15horizontal\1\0\0\1\0\1\20prompt_position\btop\1\0\3\20selection_caret\t❯ \18prompt_prefix\t❯ \21sorting_strategy\14ascending\nsetup\22telescope.actions\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvim�\3\1\0\t\0\30\0:6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\b\0004\4\6\0005\5\3\0>\5\1\0045\5\4\0>\5\2\0045\5\5\0>\5\3\0045\5\6\0>\5\4\0045\5\a\0>\5\5\4=\4\t\0035\4\v\0003\5\n\0=\5\f\4=\4\r\0035\4\17\0009\5\14\0009\5\15\0055\a\16\0B\5\2\2=\5\18\0049\5\14\0009\5\19\5)\a��B\5\2\2=\5\20\0049\5\14\0009\5\19\5)\a\4\0B\5\2\2=\5\21\0049\5\14\0009\5\22\5B\5\1\2=\5\23\0049\5\14\0009\a\14\0009\a\24\aB\a\1\0025\b\25\0B\5\3\2=\5\26\0049\5\14\0009\a\14\0009\a\27\aB\a\1\0025\b\28\0B\5\3\2=\5\29\4=\4\14\3B\1\2\1K\0\1\0\n<Tab>\1\3\0\0\6i\6s\21select_next_item\f<S-Tab>\1\3\0\0\6i\6s\21select_prev_item\n<C-h>\nclose\n<C-p>\n<C-n>\16scroll_docs\t<CR>\1\0\0\1\0\1\vselect\2\fconfirm\fmapping\fsnippet\vexpand\1\0\0\0\fsources\1\0\0\1\0\1\tname\nvsnip\1\0\1\tname\tpath\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\1\0\1\tname\vbuffer\nsetup\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: vim-floaterm
time([[Config for vim-floaterm]], true)
try_loadstring("\27LJ\2\n�\3\0\0\3\0\18\1%6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0*\1\0\0=\1\4\0006\0\0\0009\0\1\0*\1\0\0=\1\5\0006\0\0\0009\0\1\0'\1\a\0=\1\6\0006\0\0\0009\0\1\0'\1\t\0=\1\b\0006\0\0\0009\0\1\0'\1\v\0=\1\n\0006\0\0\0009\0\1\0'\1\r\0=\1\f\0006\0\0\0009\0\1\0'\1\15\0=\1\14\0006\0\0\0009\0\16\0'\2\17\0B\0\2\1K\0\1\0B        highlight FloatermBorder ctermbg=none guibg=none\n    \bcmd\15<c-\\><c-]>\25floaterm_keymap_next\15<c-\\><c-[>\25floaterm_keymap_prev\14<c-\\><bs>\25floaterm_keymap_kill\14<c-\\><cr>\24floaterm_keymap_new\15<c-\\><c-\\>\27floaterm_keymap_toggle\19floaterm_width\20floaterm_height\tfish\19floaterm_shell\6g\bvim��̙\19����\3\0", "config", "vim-floaterm")
time([[Config for vim-floaterm]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
