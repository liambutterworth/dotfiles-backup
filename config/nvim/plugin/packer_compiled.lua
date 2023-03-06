-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

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
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

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
    config = { "\27LJ\2\nù\4\0\0\6\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\14\0005\4\4\0005\5\3\0=\5\5\0045\5\6\0=\5\a\0045\5\b\0=\5\t\0045\5\n\0=\5\v\0045\5\f\0=\5\r\4=\4\15\3B\1\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\4\ahl\25GitSignsChangeDelete\ttext\b‚îÇ\vlinehl\21GitSignsChangeLn\nnumhl\21GitSignsChangeNr\14topdelete\1\0\4\ahl\19GitSignsDelete\ttext\b‚îÇ\vlinehl\21GitSignsDeleteLn\nnumhl\21GitSignsDeleteNr\vdelete\1\0\4\ahl\19GitSignsDelete\ttext\b‚îÇ\vlinehl\21GitSignsDeleteLn\nnumhl\21GitSignsDeleteNr\vchange\1\0\4\ahl\19GitSignsChange\ttext\b‚îÇ\vlinehl\21GitSignsChangeLn\nnumhl\21GitSignsChangeNr\badd\1\0\0\1\0\4\ahl\16GitSignsAdd\ttext\b‚îÇ\vlinehl\18GitSignsAddLn\nnumhl\18GitSignsAddNr\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n∞\1\0\0\a\0\a\0\0176\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\4\0B\2\2\0019\2\3\1B\2\1\0019\2\5\0006\4\0\0'\6\6\0B\4\2\0A\2\0\1K\0\1\0%nvim-autopairs.rules.endwise-lua\14add_rules\1\0\1\rcheck_ts\2\nsetup\20nvim-ts-autotag\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimá\1\0\0\3\1\4\0\18-\0\0\0009\0\0\0'\2\1\0B\0\2\2\n\0\2\0X\0\6Ä-\0\0\0009\0\2\0'\2\3\0B\0\2\2\15\0\0\0X\1\3Ä+\0\1\0L\0\2\0X\0\2Ä+\0\2\0L\0\2\0K\0\1\0\1¿\fComment\20in_syntax_group\fcomment\26in_treesitter_captureÒ\5\1\0\n\0)\0P6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\a\0'\6\b\0004\a\0\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\t\0'\6\n\0004\a\0\0B\2\5\0019\2\v\0005\4\17\0004\5\6\0005\6\f\0>\6\1\0055\6\r\0>\6\2\0055\6\14\0>\6\3\0055\6\15\0>\6\4\0055\6\16\0>\6\5\5=\5\18\0045\5\20\0003\6\19\0=\6\21\5=\5\22\0045\5\26\0009\6\23\0009\6\24\0065\b\25\0B\6\2\2=\6\27\0059\6\23\0009\6\28\6)\b¸ˇB\6\2\2=\6\29\0059\6\23\0009\6\28\6)\b\4\0B\6\2\2=\6\30\0059\6\23\0009\6\31\6B\6\1\2=\6 \0059\6\23\0009\b\23\0009\b!\bB\b\1\0025\t\"\0B\6\3\2=\6#\0059\6\23\0009\b\23\0009\b$\bB\b\1\0025\t%\0B\6\3\2=\6&\5=\5\23\0043\5'\0=\5(\4B\2\2\0012\0\0ÄK\0\1\0\fenabled\0\n<Tab>\1\3\0\0\6i\6s\21select_next_item\f<S-Tab>\1\3\0\0\6i\6s\21select_prev_item\n<C-h>\nclose\n<C-p>\n<C-n>\16scroll_docs\t<CR>\1\0\0\1\0\1\vselect\2\fconfirm\fmapping\fsnippet\vexpand\1\0\0\0\fsources\1\0\0\1\0\1\tname\nvsnip\1\0\1\tname\tpath\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\1\0\1\tname\vbuffer\nsetup9<cmd>lua require(\"cmp\").setup { enabled = true }<cr>\a]k:<cmd>lua require(\"cmp\").setup { enabled = false }<cr>\a[k\6n\20nvim_set_keymap\bapi\bvim\23cmp.config.context\bcmp\frequire\0" },
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n·\5\0\2\t\0\28\0D6\2\0\0009\2\1\2'\3\3\0=\3\2\0026\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\a\0'\a\b\0005\b\t\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\n\0'\a\v\0005\b\f\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\r\0'\a\14\0005\b\15\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\16\0'\a\17\0005\b\18\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\19\0'\a\20\0005\b\21\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\22\0'\a\23\0005\b\24\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\25\0'\a\26\0005\b\27\0B\2\6\1K\0\1\0\1\0\1\vsilent\2*<cmd>lua vim.lsp.buf.references()<cr>\agr\1\0\1\vsilent\2-<cmd>lua vim.diagnostic.open_float()<cr>\agi\1\0\1\vsilent\2,<cmd>lua vim.diagnostic.goto_next()<cr>\a]d\1\0\1\vsilent\2,<cmd>lua vim.diagnostic.goto_prev()<cr>\a[d\1\0\1\vsilent\2+<cmd>lua vim.lsp.buf.declaration()<cr>\n<c-}>\1\0\1\vsilent\2*<cmd>lua vim.lsp.buf.definition()<cr>\n<c-]>\1\0\1\vsilent\2:<cmd>lua vim.lsp.buf.hover({ border = \"single\" })<cr>\6K\6n\24nvim_buf_set_keymap\bapi\27v:lua.vim.lsp.omnifunc\romnifunc\abo\bvim±\6\1\0\14\0*\0O6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\0019\1\5\1B\1\1\0023\2\6\0005\3\a\0006\4\b\0\18\6\3\0B\4\2\4H\a\vÄ'\t\t\0\18\n\a\0&\t\n\t6\n\2\0009\n\n\n9\n\v\n\18\f\t\0005\r\f\0=\b\r\r=\t\14\rB\n\3\1F\a\3\3R\aÛ\1279\4\15\0019\4\16\0049\4\17\4+\5\2\0=\5\18\0049\4\15\0019\4\16\0049\4\17\0045\5\21\0005\6\20\0=\6\22\5=\5\19\0049\4\23\0009\4\24\0045\6\25\0=\1\26\6B\4\2\0019\4\27\0009\4\24\0045\6\28\0=\1\26\6=\2\29\6B\4\2\0019\4\30\0009\4\24\0045\6\31\0=\1\26\6=\2\29\6B\4\2\0019\4 \0009\4\24\0045\6!\0=\1\26\6=\2\29\6B\4\2\0019\4\"\0009\4\24\0045\6#\0=\1\26\6=\2\29\0065\a%\0005\b$\0=\b&\a=\a'\6B\4\2\0019\4(\0009\4\24\0045\6)\0=\1\26\6=\2\29\6B\4\2\1K\0\1\0\1\0\0\17intelephense\17init_options\15typescript\1\0\0\1\0\1\15serverPathB/usr/local/lib/node_modules/typescript/lib/tsserverlibrary.js\1\0\0\nvolar\1\0\0\vjsonls\1\0\0\16tailwindcss\14on_attach\1\0\0\thtml\17capabilities\1\0\0\nsetup\18rust_analyzer\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\19completionItem\15completion\17textDocument\vtexthl\ttext\1\0\1\nnumhl\5\16sign_define\afn\19DiagnosticSign\npairs\1\0\4\tInfo\b‚óè\nError\b‚óè\tHint\b‚óè\tWarn\b‚óè\0\29make_client_capabilities\rprotocol\blsp\bvim\14lspconfig\frequire\0" },
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\nÂ\r\0\0\f\0V\0Ÿ\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0019\2\4\0005\4\5\0005\5\6\0=\5\a\0045\5\b\0=\5\t\0045\5\n\0005\6\v\0004\a\31\0005\b\f\0\18\t\1\0'\v\r\0B\t\2\2=\t\14\b>\b\1\a5\b\15\0\18\t\1\0'\v\16\0B\t\2\2=\t\14\b>\b\2\a5\b\17\0\18\t\1\0'\v\18\0B\t\2\2=\t\14\b>\b\3\a5\b\19\0\18\t\1\0'\v\20\0B\t\2\2=\t\14\b>\b\4\a5\b\21\0\18\t\1\0'\v\22\0B\t\2\2=\t\14\b>\b\5\a5\b\23\0\18\t\1\0'\v\24\0B\t\2\2=\t\14\b>\b\6\a5\b\25\0\18\t\1\0'\v\26\0B\t\2\2=\t\14\b>\b\a\a5\b\27\0\18\t\1\0'\v\28\0B\t\2\2=\t\14\b>\b\b\a5\b\29\0\18\t\1\0'\v\30\0B\t\2\2=\t\14\b>\b\t\a5\b\31\0\18\t\1\0'\v \0B\t\2\2=\t\14\b>\b\n\a5\b!\0\18\t\1\0'\v\"\0B\t\2\2=\t\14\b>\b\v\a5\b#\0\18\t\1\0'\v$\0B\t\2\2=\t\14\b>\b\f\a5\b%\0\18\t\1\0'\v&\0B\t\2\2=\t\14\b>\b\r\a5\b'\0\18\t\1\0'\v(\0B\t\2\2=\t\14\b>\b\14\a5\b)\0\18\t\1\0'\v*\0B\t\2\2=\t\14\b>\b\15\a5\b+\0\18\t\1\0'\v,\0B\t\2\2=\t\14\b>\b\16\a5\b-\0\18\t\1\0'\v.\0B\t\2\2=\t\14\b>\b\17\a5\b/\0\18\t\1\0'\v0\0B\t\2\2=\t\14\b>\b\18\a5\b1\0\18\t\1\0'\v2\0B\t\2\2=\t\14\b>\b\19\a5\b3\0\18\t\1\0'\v4\0B\t\2\2=\t\14\b>\b\20\a5\b5\0\18\t\1\0'\v6\0B\t\2\2=\t\14\b>\b\21\a5\b7\0\18\t\1\0'\v8\0B\t\2\2=\t\14\b>\b\22\a5\b9\0\18\t\1\0'\v:\0B\t\2\2=\t\14\b>\b\23\a5\b;\0\18\t\1\0'\v<\0B\t\2\2=\t\14\b>\b\24\a5\b=\0\18\t\1\0'\v>\0B\t\2\2=\t\14\b>\b\25\a5\b?\0\18\t\1\0'\v@\0B\t\2\2=\t\14\b>\b\26\a5\bA\0\18\t\1\0'\vB\0B\t\2\2=\t\14\b>\b\27\a5\bC\0\18\t\1\0'\vD\0B\t\2\2=\t\14\b>\b\28\a5\bE\0\18\t\1\0'\vF\0B\t\2\2=\t\14\b>\b\29\a5\bG\0\18\t\1\0'\vH\0B\t\2\2=\t\14\b>\b\30\a=\aI\6=\6J\5=\5K\4B\2\2\0016\2L\0009\2M\0029\2N\2'\4O\0'\5P\0'\6Q\0005\aR\0B\2\5\0016\2L\0009\2M\0029\2N\2'\4O\0'\5S\0'\6T\0005\aU\0B\2\5\1K\0\1\0\1\0\1\fnoremap\2\30<cmd>NvimTreeFindFile<cr>\n<cr>f\1\0\1\fnoremap\2\28<cmd>NvimTreeToggle<cr>\r<cr><cr>\6n\20nvim_set_keymap\bapi\bvim\tview\rmappings\tlist\20toggle_dotfiles\1\0\1\bkey\6.\16toggle_help\1\0\1\bkey\6,\nclose\1\0\1\bkey\6q\16system_open\1\0\1\bkey\6s\18next_git_item\1\0\1\bkey\a]c\18prev_git_item\1\0\1\bkey\a[c\23copy_absolute_path\1\0\1\bkey\agy\14copy_path\1\0\1\bkey\6Y\14copy_name\1\0\1\bkey\6y\npaste\1\0\1\bkey\6v\bcut\1\0\1\bkey\6x\tcopy\1\0\1\bkey\6c\16full_rename\1\0\1\bkey\n<C-r>\vrename\1\0\1\bkey\6r\ntrash\1\0\1\bkey\6D\vremove\1\0\1\bkey\6d\vcreate\1\0\1\bkey\6a\frefresh\1\0\1\bkey\6R\19toggle_ignored\1\0\1\bkey\6I\17last_sibling\1\0\1\bkey\6J\18first_sibling\1\0\1\bkey\6K\17next_sibling\1\0\1\bkey\6>\17prev_sibling\1\0\1\bkey\6<\vtabnew\1\0\1\bkey\n<C-t>\nsplit\1\0\1\bkey\n<C-x>\vvsplit\1\0\1\bkey\n<C-v>\15close_node\1\0\1\bkey\6P\16parent_node\1\0\1\bkey\6p\acd\1\0\1\bkey\6O\acb\tedit\1\0\1\bkey\6o\1\0\1\16custom_only\2\1\0\1\nwidth\3(\rrenderer\1\0\1\18highlight_git\1\bgit\1\0\2\vignore\1\venable\1\1\0\2\17hijack_netrw\2\18disable_netrw\2\nsetup\23nvim_tree_callback\21nvim-tree.config\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nﬂ\4\0\0\a\0\25\0\0296\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\6\0'\5\a\0005\6\b\0B\1\5\0019\1\t\0005\3\v\0005\4\n\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\22\0005\5\19\0005\6\20\0=\6\21\5=\5\23\4=\4\24\3B\1\2\1K\0\1\0\16textobjects\vselect\1\0\0\fkeymaps\1\0\f\aic\23@conditional.inner\aab\17@block.outer\ail\16@loop.inner\aal\16@loop.outer\aaa\21@parameter.outer\aiC\17@class.inner\aia\20@paramter.inner\aaC\17@class.outer\aac\23@conditional.outer\aif\20@function.inner\aaf\20@function.outer\aib\17@block.inner\1\0\2\14lookahead\2\venable\2\14autopairs\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\26context_commentstring\1\0\0\1\0\1\venable\2\nsetup\1\0\1\fnoremap\2(:TSHighlightCapturesUnderCursor<cr>\n<f10>\6n\20nvim_set_keymap\bapi\bvim\28nvim-treesitter.configs\frequire\0" },
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
    config = { "\27LJ\2\n∞%\0\0\t\0ç\1\0¿\0026\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\21\0005\5\4\0005\6\6\0005\a\5\0=\a\a\6=\6\b\0055\6\t\0=\6\n\0055\6\16\0005\a\f\0009\b\v\1=\b\r\a9\b\14\1=\b\15\a=\a\17\0065\a\18\0009\b\14\1=\b\15\a=\a\19\6=\6\20\5=\5\22\0045\5\27\0005\6\23\0005\a\25\0005\b\24\0=\b\17\a5\b\26\0=\b\19\a=\a\20\6=\6\28\0055\6\30\0005\a\29\0=\a\31\6=\6 \5=\5!\4B\2\2\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5%\0'\6&\0005\a'\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5(\0'\6)\0005\a*\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5+\0'\6,\0005\a-\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5.\0'\6/\0005\a0\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\0051\0'\0062\0005\a3\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\0054\0'\0065\0005\a6\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\0057\0'\0068\0005\a9\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5:\0'\6;\0005\a<\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5=\0'\6>\0005\a?\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5@\0'\6A\0005\aB\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5C\0'\6D\0005\aE\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5F\0'\6G\0005\aH\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5I\0'\6J\0005\aK\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5L\0'\6M\0005\aN\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5O\0'\6P\0005\aQ\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5R\0'\6S\0005\aT\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5U\0'\6V\0005\aW\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5X\0'\6Y\0005\aZ\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5[\0'\6\\\0005\a]\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5^\0'\6_\0005\a`\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5a\0'\6b\0005\ac\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5d\0'\6e\0005\af\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5g\0'\6h\0005\ai\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5j\0'\6k\0005\al\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5m\0'\6n\0005\ao\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5p\0'\6q\0005\ar\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5s\0'\6t\0005\au\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5v\0'\6w\0005\ax\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5y\0'\6z\0005\a{\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5|\0'\6}\0005\a~\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5\127\0'\6Ä\0005\aÅ\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5Ç\0'\6É\0005\aÑ\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5Ö\0'\6Ü\0005\aá\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5à\0'\6â\0005\aä\0B\2\5\0016\2\"\0009\2ã\2'\4å\0B\2\2\1K\0\1\0Ø\t        highlight TelescopeMatching cterm=bold ctermfg=green\n        highlight TelescopeMultiSelection ctermfg=magenta\n        highlight TelescopeNormal cterm=none ctermfg=white\n        highlight TelescopePromptPrefix cterm=bold ctermfg=magenta\n        highlight TelescopeResultsDiffChange ctermbg=none ctermfg=yellow\n        highlight TelescopeResultsDiffAdd ctermbg=none ctermfg=green\n        highlight TelescopeResultsDiffDelete ctermbg=none ctermfg=red\n        highlight TelescopeResultsDiffUntracked ctermbg=none ctermfg=red\n        highlight TelescopeResultsClass ctermfg=blue\n        highlight TelescopeResultsConstant ctermfg=magenta\n        highlight TelescopeResultsField ctermfg=blue\n        highlight TelescopeResultsIdentifier ctermfg=yellow\n        highlight TelescopeResultsFunction ctermfg=cyan\n        highlight TelescopeResultsMethod ctermfg=cyan\n        highlight TelescopeResultsOperator ctermfg=blue\n        highlight TelescopeResultsStruct ctermfg=yellow\n        highlight TelescopeResultsVariable ctermfg=blue\n        highlight TelescopeSelection cterm=bold ctermbg=none ctermfg=white\n        highlight TelescopeSelectionCaret cterm=bold ctermbg=none ctermfg=magenta\n    \bcmd\1\0\1\fnoremap\2!<cmd>Telescope filetypes<cr>\r<space>t\1\0\1\fnoremap\2%<cmd>Telescope spell_suggest<cr>\r<space>s\1\0\1\fnoremap\2 <cmd>Telescope quickfix<cr>\r<space>q\1\0\1\fnoremap\2#<cmd>Telescope vim_options<cr>\r<space>o\1\0\1\fnoremap\2!<cmd>Telescope man_pages<cr>\r<space>m\1\0\1\fnoremap\2-<cmd>Telescope lsp_workspace_symbols<cr>\14<space>lw\1\0\1\fnoremap\2,<cmd>Telescope lsp_document_symbols<cr>\14<space>ls\1\0\1\fnoremap\2&<cmd>Telescope lsp_references<cr>\14<space>lr\1\0\1\fnoremap\2'<cmd>Telescope lsp_definitions<cr>\14<space>lk\1\0\1\fnoremap\2+<cmd>Telescope lsp_implementations<cr>\14<space>li\1\0\1\fnoremap\0020<cmd>Telescope lsp_document_diagnostics<cr>\14<space>ld\1\0\1\fnoremap\2(<cmd>Telescope lsp_code_actions<cr>\14<space>la\1\0\1\fnoremap\2!<cmd>Telescope git_stash<cr>\14<space>gt\1\0\1\fnoremap\2$<cmd>Telescope git_branches<cr>\14<space>gb\1\0\1\fnoremap\2$<cmd>Telescope git_bcommits<cr>\14<space>gc\1\0\1\fnoremap\2#<cmd>Telescope git_commits<cr>\14<space>gl\1\0\1\fnoremap\2\"<cmd>Telescope git_status<cr>\14<space>gs\1\0\1\fnoremap\2!<cmd>Telescope git_files<cr>\14<space>gf\1\0\1\fnoremap\2 <cmd>Telescope commands<cr>\r<space>c\1\0\1\fnoremap\2!<cmd>Telescope help_tags<cr>\r<space>?\1\0\1\fnoremap\2&<cmd>Telescope search_history<cr>\r<space>/\1\0\1\fnoremap\0026<cmd>Telescope live_grep grep_open_files=true<cr>\r<space>l\1\0\1\fnoremap\0021<cmd>Telescope live_grep search_dirs=%:h<cr>\r<space>k\1\0\1\fnoremap\2!<cmd>Telescope live_grep<cr>\r<space>j\1\0\1\fnoremap\2!<cmd>Telescope registers<cr>\r<space>\"\1\0\1\fnoremap\2\29<cmd>Telescope marks<cr>\r<space>'\1\0\1\fnoremap\2'<cmd>Telescope command_history<cr>\r<space>:\1\0\1\fnoremap\2#<cmd>Telescope buffer_tags<cr>\r<space>}\1\0\1\fnoremap\2\28<cmd>Telescope tags<cr>\r<space>]\1\0\1\fnoremap\2 <cmd>Telescope tagstack<cr>\r<space>[\1\0\1\fnoremap\2*<cmd>Telescope find_files cwd=%:h<cr>\r<space>.\1\0\1\fnoremap\2 <cmd>Telescope jumplist<cr>\17<space><tab>\1\0\1\fnoremap\2\31<cmd>Telescope buffers<cr>\16<space><bs>\1\0\1\fnoremap\2\"<cmd>Telescope find_files<cr>\19<space><space>\20nvim_set_keymap\bapi\bvim\fpickers\14live_grep\17path_display\1\0\0\1\0\1\fshorten\3\1\fbuffers\1\0\0\1\0\1\n<c-d>\18delete_buffer\1\0\0\1\0\1\n<c-d>\18delete_buffer\1\0\1\rsort_mru\2\rdefaults\1\0\0\rmappings\6n\1\0\1\n<c-x>\1\6i\1\0\0\n<c-s>\15file_split\n<c-f>\1\0\1\n<c-x>\1\21toggle_selection\16borderchars\1\t\0\0\b‚îÄ\b‚îÇ\b‚îÄ\b‚îÇ\b‚îå\b‚îê\b‚îò\b‚îî\18layout_config\15horizontal\1\0\0\1\0\1\20prompt_position\btop\1\0\3\21sorting_strategy\14ascending\20selection_caret\t‚ùØ \18prompt_prefix\t‚ùØ \nsetup\22telescope.actions\14telescope\frequire\0" },
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
    config = { "\27LJ\2\nø\3\0\0\3\0\18\1%6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0*\1\0\0=\1\4\0006\0\0\0009\0\1\0*\1\0\0=\1\5\0006\0\0\0009\0\1\0'\1\a\0=\1\6\0006\0\0\0009\0\1\0'\1\t\0=\1\b\0006\0\0\0009\0\1\0'\1\v\0=\1\n\0006\0\0\0009\0\1\0'\1\r\0=\1\f\0006\0\0\0009\0\1\0'\1\15\0=\1\14\0006\0\0\0009\0\16\0'\2\17\0B\0\2\1K\0\1\0B        highlight FloatermBorder ctermbg=none guibg=none\n    \bcmd\15<c-\\><c-]>\25floaterm_keymap_next\15<c-\\><c-[>\25floaterm_keymap_prev\14<c-\\><bs>\25floaterm_keymap_kill\14<c-\\><cr>\24floaterm_keymap_new\15<c-\\><c-\\>\27floaterm_keymap_toggle\19floaterm_width\20floaterm_height\tfish\19floaterm_shell\6g\bvimµÊÃô\19ô≥¶ˇ\3\0" },
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
    config = { "\27LJ\2\n€\4\0\0\6\0\27\0I6\0\0\0009\0\1\0006\1\0\0009\1\3\0019\1\4\1'\3\5\0B\1\2\2=\1\2\0006\0\0\0009\0\1\0005\1\b\0005\2\a\0=\2\t\0015\2\n\0=\2\v\1=\1\6\0006\0\0\0009\0\f\0009\0\r\0'\2\14\0'\3\15\0'\4\16\0004\5\0\0B\0\5\0016\0\0\0009\0\f\0009\0\r\0'\2\14\0'\3\17\0'\4\18\0004\5\0\0B\0\5\0016\0\0\0009\0\f\0009\0\r\0'\2\19\0'\3\20\0'\4\21\0004\5\0\0B\0\5\0016\0\0\0009\0\f\0009\0\r\0'\2\19\0'\3\22\0'\4\23\0004\5\0\0B\0\5\0016\0\0\0009\0\f\0009\0\r\0'\2\19\0'\3\24\0'\4\25\0004\5\0\0B\0\5\0016\0\0\0009\0\f\0009\0\r\0'\2\26\0'\3\20\0'\4\21\0004\5\0\0B\0\5\0016\0\0\0009\0\f\0009\0\r\0'\2\26\0'\3\22\0'\4\23\0004\5\0\0B\0\5\1K\0\1\0\6s\25<plug>(vsnip-expand)\n<c-l>\28<plug>(vsnip-jump-prev)\n<c-k>\28<plug>(vsnip-jump-next)\n<c-j>\6i\27<plug>(vsnip-cut-text)\ass#<plug>(vsnip-select-text)<esc>\asy\6v\20nvim_set_keymap\bapi\bvue\1\4\0\0\thtml\bcss\15javascript\15typescript\1\0\0\1\2\0\0\15javascript\20vsnip_filetypes\28~/.config/nvim/snippets\vexpand\afn\22vsnip_snippet_dir\6g\bvim\0" },
    loaded = true,
    path = "/Users/liambutterworth/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimá\1\0\0\3\1\4\0\18-\0\0\0009\0\0\0'\2\1\0B\0\2\2\n\0\2\0X\0\6Ä-\0\0\0009\0\2\0'\2\3\0B\0\2\2\15\0\0\0X\1\3Ä+\0\1\0L\0\2\0X\0\2Ä+\0\2\0L\0\2\0K\0\1\0\1¿\fComment\20in_syntax_group\fcomment\26in_treesitter_captureÒ\5\1\0\n\0)\0P6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\a\0'\6\b\0004\a\0\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\t\0'\6\n\0004\a\0\0B\2\5\0019\2\v\0005\4\17\0004\5\6\0005\6\f\0>\6\1\0055\6\r\0>\6\2\0055\6\14\0>\6\3\0055\6\15\0>\6\4\0055\6\16\0>\6\5\5=\5\18\0045\5\20\0003\6\19\0=\6\21\5=\5\22\0045\5\26\0009\6\23\0009\6\24\0065\b\25\0B\6\2\2=\6\27\0059\6\23\0009\6\28\6)\b¸ˇB\6\2\2=\6\29\0059\6\23\0009\6\28\6)\b\4\0B\6\2\2=\6\30\0059\6\23\0009\6\31\6B\6\1\2=\6 \0059\6\23\0009\b\23\0009\b!\bB\b\1\0025\t\"\0B\6\3\2=\6#\0059\6\23\0009\b\23\0009\b$\bB\b\1\0025\t%\0B\6\3\2=\6&\5=\5\23\0043\5'\0=\5(\4B\2\2\0012\0\0ÄK\0\1\0\fenabled\0\n<Tab>\1\3\0\0\6i\6s\21select_next_item\f<S-Tab>\1\3\0\0\6i\6s\21select_prev_item\n<C-h>\nclose\n<C-p>\n<C-n>\16scroll_docs\t<CR>\1\0\0\1\0\1\vselect\2\fconfirm\fmapping\fsnippet\vexpand\1\0\0\0\fsources\1\0\0\1\0\1\tname\nvsnip\1\0\1\tname\tpath\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\1\0\1\tname\vbuffer\nsetup9<cmd>lua require(\"cmp\").setup { enabled = true }<cr>\a]k:<cmd>lua require(\"cmp\").setup { enabled = false }<cr>\a[k\6n\20nvim_set_keymap\bapi\bvim\23cmp.config.context\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n∞%\0\0\t\0ç\1\0¿\0026\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\21\0005\5\4\0005\6\6\0005\a\5\0=\a\a\6=\6\b\0055\6\t\0=\6\n\0055\6\16\0005\a\f\0009\b\v\1=\b\r\a9\b\14\1=\b\15\a=\a\17\0065\a\18\0009\b\14\1=\b\15\a=\a\19\6=\6\20\5=\5\22\0045\5\27\0005\6\23\0005\a\25\0005\b\24\0=\b\17\a5\b\26\0=\b\19\a=\a\20\6=\6\28\0055\6\30\0005\a\29\0=\a\31\6=\6 \5=\5!\4B\2\2\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5%\0'\6&\0005\a'\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5(\0'\6)\0005\a*\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5+\0'\6,\0005\a-\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5.\0'\6/\0005\a0\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\0051\0'\0062\0005\a3\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\0054\0'\0065\0005\a6\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\0057\0'\0068\0005\a9\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5:\0'\6;\0005\a<\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5=\0'\6>\0005\a?\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5@\0'\6A\0005\aB\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5C\0'\6D\0005\aE\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5F\0'\6G\0005\aH\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5I\0'\6J\0005\aK\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5L\0'\6M\0005\aN\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5O\0'\6P\0005\aQ\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5R\0'\6S\0005\aT\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5U\0'\6V\0005\aW\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5X\0'\6Y\0005\aZ\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5[\0'\6\\\0005\a]\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5^\0'\6_\0005\a`\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5a\0'\6b\0005\ac\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5d\0'\6e\0005\af\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5g\0'\6h\0005\ai\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5j\0'\6k\0005\al\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5m\0'\6n\0005\ao\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5p\0'\6q\0005\ar\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5s\0'\6t\0005\au\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5v\0'\6w\0005\ax\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5y\0'\6z\0005\a{\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5|\0'\6}\0005\a~\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5\127\0'\6Ä\0005\aÅ\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5Ç\0'\6É\0005\aÑ\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5Ö\0'\6Ü\0005\aá\0B\2\5\0016\2\"\0009\2#\0029\2$\2'\4\19\0'\5à\0'\6â\0005\aä\0B\2\5\0016\2\"\0009\2ã\2'\4å\0B\2\2\1K\0\1\0Ø\t        highlight TelescopeMatching cterm=bold ctermfg=green\n        highlight TelescopeMultiSelection ctermfg=magenta\n        highlight TelescopeNormal cterm=none ctermfg=white\n        highlight TelescopePromptPrefix cterm=bold ctermfg=magenta\n        highlight TelescopeResultsDiffChange ctermbg=none ctermfg=yellow\n        highlight TelescopeResultsDiffAdd ctermbg=none ctermfg=green\n        highlight TelescopeResultsDiffDelete ctermbg=none ctermfg=red\n        highlight TelescopeResultsDiffUntracked ctermbg=none ctermfg=red\n        highlight TelescopeResultsClass ctermfg=blue\n        highlight TelescopeResultsConstant ctermfg=magenta\n        highlight TelescopeResultsField ctermfg=blue\n        highlight TelescopeResultsIdentifier ctermfg=yellow\n        highlight TelescopeResultsFunction ctermfg=cyan\n        highlight TelescopeResultsMethod ctermfg=cyan\n        highlight TelescopeResultsOperator ctermfg=blue\n        highlight TelescopeResultsStruct ctermfg=yellow\n        highlight TelescopeResultsVariable ctermfg=blue\n        highlight TelescopeSelection cterm=bold ctermbg=none ctermfg=white\n        highlight TelescopeSelectionCaret cterm=bold ctermbg=none ctermfg=magenta\n    \bcmd\1\0\1\fnoremap\2!<cmd>Telescope filetypes<cr>\r<space>t\1\0\1\fnoremap\2%<cmd>Telescope spell_suggest<cr>\r<space>s\1\0\1\fnoremap\2 <cmd>Telescope quickfix<cr>\r<space>q\1\0\1\fnoremap\2#<cmd>Telescope vim_options<cr>\r<space>o\1\0\1\fnoremap\2!<cmd>Telescope man_pages<cr>\r<space>m\1\0\1\fnoremap\2-<cmd>Telescope lsp_workspace_symbols<cr>\14<space>lw\1\0\1\fnoremap\2,<cmd>Telescope lsp_document_symbols<cr>\14<space>ls\1\0\1\fnoremap\2&<cmd>Telescope lsp_references<cr>\14<space>lr\1\0\1\fnoremap\2'<cmd>Telescope lsp_definitions<cr>\14<space>lk\1\0\1\fnoremap\2+<cmd>Telescope lsp_implementations<cr>\14<space>li\1\0\1\fnoremap\0020<cmd>Telescope lsp_document_diagnostics<cr>\14<space>ld\1\0\1\fnoremap\2(<cmd>Telescope lsp_code_actions<cr>\14<space>la\1\0\1\fnoremap\2!<cmd>Telescope git_stash<cr>\14<space>gt\1\0\1\fnoremap\2$<cmd>Telescope git_branches<cr>\14<space>gb\1\0\1\fnoremap\2$<cmd>Telescope git_bcommits<cr>\14<space>gc\1\0\1\fnoremap\2#<cmd>Telescope git_commits<cr>\14<space>gl\1\0\1\fnoremap\2\"<cmd>Telescope git_status<cr>\14<space>gs\1\0\1\fnoremap\2!<cmd>Telescope git_files<cr>\14<space>gf\1\0\1\fnoremap\2 <cmd>Telescope commands<cr>\r<space>c\1\0\1\fnoremap\2!<cmd>Telescope help_tags<cr>\r<space>?\1\0\1\fnoremap\2&<cmd>Telescope search_history<cr>\r<space>/\1\0\1\fnoremap\0026<cmd>Telescope live_grep grep_open_files=true<cr>\r<space>l\1\0\1\fnoremap\0021<cmd>Telescope live_grep search_dirs=%:h<cr>\r<space>k\1\0\1\fnoremap\2!<cmd>Telescope live_grep<cr>\r<space>j\1\0\1\fnoremap\2!<cmd>Telescope registers<cr>\r<space>\"\1\0\1\fnoremap\2\29<cmd>Telescope marks<cr>\r<space>'\1\0\1\fnoremap\2'<cmd>Telescope command_history<cr>\r<space>:\1\0\1\fnoremap\2#<cmd>Telescope buffer_tags<cr>\r<space>}\1\0\1\fnoremap\2\28<cmd>Telescope tags<cr>\r<space>]\1\0\1\fnoremap\2 <cmd>Telescope tagstack<cr>\r<space>[\1\0\1\fnoremap\2*<cmd>Telescope find_files cwd=%:h<cr>\r<space>.\1\0\1\fnoremap\2 <cmd>Telescope jumplist<cr>\17<space><tab>\1\0\1\fnoremap\2\31<cmd>Telescope buffers<cr>\16<space><bs>\1\0\1\fnoremap\2\"<cmd>Telescope find_files<cr>\19<space><space>\20nvim_set_keymap\bapi\bvim\fpickers\14live_grep\17path_display\1\0\0\1\0\1\fshorten\3\1\fbuffers\1\0\0\1\0\1\n<c-d>\18delete_buffer\1\0\0\1\0\1\n<c-d>\18delete_buffer\1\0\1\rsort_mru\2\rdefaults\1\0\0\rmappings\6n\1\0\1\n<c-x>\1\6i\1\0\0\n<c-s>\15file_split\n<c-f>\1\0\1\n<c-x>\1\21toggle_selection\16borderchars\1\t\0\0\b‚îÄ\b‚îÇ\b‚îÄ\b‚îÇ\b‚îå\b‚îê\b‚îò\b‚îî\18layout_config\15horizontal\1\0\0\1\0\1\20prompt_position\btop\1\0\3\21sorting_strategy\14ascending\20selection_caret\t‚ùØ \18prompt_prefix\t‚ùØ \nsetup\22telescope.actions\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: vim-vsnip
time([[Config for vim-vsnip]], true)
try_loadstring("\27LJ\2\n€\4\0\0\6\0\27\0I6\0\0\0009\0\1\0006\1\0\0009\1\3\0019\1\4\1'\3\5\0B\1\2\2=\1\2\0006\0\0\0009\0\1\0005\1\b\0005\2\a\0=\2\t\0015\2\n\0=\2\v\1=\1\6\0006\0\0\0009\0\f\0009\0\r\0'\2\14\0'\3\15\0'\4\16\0004\5\0\0B\0\5\0016\0\0\0009\0\f\0009\0\r\0'\2\14\0'\3\17\0'\4\18\0004\5\0\0B\0\5\0016\0\0\0009\0\f\0009\0\r\0'\2\19\0'\3\20\0'\4\21\0004\5\0\0B\0\5\0016\0\0\0009\0\f\0009\0\r\0'\2\19\0'\3\22\0'\4\23\0004\5\0\0B\0\5\0016\0\0\0009\0\f\0009\0\r\0'\2\19\0'\3\24\0'\4\25\0004\5\0\0B\0\5\0016\0\0\0009\0\f\0009\0\r\0'\2\26\0'\3\20\0'\4\21\0004\5\0\0B\0\5\0016\0\0\0009\0\f\0009\0\r\0'\2\26\0'\3\22\0'\4\23\0004\5\0\0B\0\5\1K\0\1\0\6s\25<plug>(vsnip-expand)\n<c-l>\28<plug>(vsnip-jump-prev)\n<c-k>\28<plug>(vsnip-jump-next)\n<c-j>\6i\27<plug>(vsnip-cut-text)\ass#<plug>(vsnip-select-text)<esc>\asy\6v\20nvim_set_keymap\bapi\bvue\1\4\0\0\thtml\bcss\15javascript\15typescript\1\0\0\1\2\0\0\15javascript\20vsnip_filetypes\28~/.config/nvim/snippets\vexpand\afn\22vsnip_snippet_dir\6g\bvim\0", "config", "vim-vsnip")
time([[Config for vim-vsnip]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n∞\1\0\0\a\0\a\0\0176\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\4\0B\2\2\0019\2\3\1B\2\1\0019\2\5\0006\4\0\0'\6\6\0B\4\2\0A\2\0\1K\0\1\0%nvim-autopairs.rules.endwise-lua\14add_rules\1\0\1\rcheck_ts\2\nsetup\20nvim-ts-autotag\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\nÂ\r\0\0\f\0V\0Ÿ\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0019\2\4\0005\4\5\0005\5\6\0=\5\a\0045\5\b\0=\5\t\0045\5\n\0005\6\v\0004\a\31\0005\b\f\0\18\t\1\0'\v\r\0B\t\2\2=\t\14\b>\b\1\a5\b\15\0\18\t\1\0'\v\16\0B\t\2\2=\t\14\b>\b\2\a5\b\17\0\18\t\1\0'\v\18\0B\t\2\2=\t\14\b>\b\3\a5\b\19\0\18\t\1\0'\v\20\0B\t\2\2=\t\14\b>\b\4\a5\b\21\0\18\t\1\0'\v\22\0B\t\2\2=\t\14\b>\b\5\a5\b\23\0\18\t\1\0'\v\24\0B\t\2\2=\t\14\b>\b\6\a5\b\25\0\18\t\1\0'\v\26\0B\t\2\2=\t\14\b>\b\a\a5\b\27\0\18\t\1\0'\v\28\0B\t\2\2=\t\14\b>\b\b\a5\b\29\0\18\t\1\0'\v\30\0B\t\2\2=\t\14\b>\b\t\a5\b\31\0\18\t\1\0'\v \0B\t\2\2=\t\14\b>\b\n\a5\b!\0\18\t\1\0'\v\"\0B\t\2\2=\t\14\b>\b\v\a5\b#\0\18\t\1\0'\v$\0B\t\2\2=\t\14\b>\b\f\a5\b%\0\18\t\1\0'\v&\0B\t\2\2=\t\14\b>\b\r\a5\b'\0\18\t\1\0'\v(\0B\t\2\2=\t\14\b>\b\14\a5\b)\0\18\t\1\0'\v*\0B\t\2\2=\t\14\b>\b\15\a5\b+\0\18\t\1\0'\v,\0B\t\2\2=\t\14\b>\b\16\a5\b-\0\18\t\1\0'\v.\0B\t\2\2=\t\14\b>\b\17\a5\b/\0\18\t\1\0'\v0\0B\t\2\2=\t\14\b>\b\18\a5\b1\0\18\t\1\0'\v2\0B\t\2\2=\t\14\b>\b\19\a5\b3\0\18\t\1\0'\v4\0B\t\2\2=\t\14\b>\b\20\a5\b5\0\18\t\1\0'\v6\0B\t\2\2=\t\14\b>\b\21\a5\b7\0\18\t\1\0'\v8\0B\t\2\2=\t\14\b>\b\22\a5\b9\0\18\t\1\0'\v:\0B\t\2\2=\t\14\b>\b\23\a5\b;\0\18\t\1\0'\v<\0B\t\2\2=\t\14\b>\b\24\a5\b=\0\18\t\1\0'\v>\0B\t\2\2=\t\14\b>\b\25\a5\b?\0\18\t\1\0'\v@\0B\t\2\2=\t\14\b>\b\26\a5\bA\0\18\t\1\0'\vB\0B\t\2\2=\t\14\b>\b\27\a5\bC\0\18\t\1\0'\vD\0B\t\2\2=\t\14\b>\b\28\a5\bE\0\18\t\1\0'\vF\0B\t\2\2=\t\14\b>\b\29\a5\bG\0\18\t\1\0'\vH\0B\t\2\2=\t\14\b>\b\30\a=\aI\6=\6J\5=\5K\4B\2\2\0016\2L\0009\2M\0029\2N\2'\4O\0'\5P\0'\6Q\0005\aR\0B\2\5\0016\2L\0009\2M\0029\2N\2'\4O\0'\5S\0'\6T\0005\aU\0B\2\5\1K\0\1\0\1\0\1\fnoremap\2\30<cmd>NvimTreeFindFile<cr>\n<cr>f\1\0\1\fnoremap\2\28<cmd>NvimTreeToggle<cr>\r<cr><cr>\6n\20nvim_set_keymap\bapi\bvim\tview\rmappings\tlist\20toggle_dotfiles\1\0\1\bkey\6.\16toggle_help\1\0\1\bkey\6,\nclose\1\0\1\bkey\6q\16system_open\1\0\1\bkey\6s\18next_git_item\1\0\1\bkey\a]c\18prev_git_item\1\0\1\bkey\a[c\23copy_absolute_path\1\0\1\bkey\agy\14copy_path\1\0\1\bkey\6Y\14copy_name\1\0\1\bkey\6y\npaste\1\0\1\bkey\6v\bcut\1\0\1\bkey\6x\tcopy\1\0\1\bkey\6c\16full_rename\1\0\1\bkey\n<C-r>\vrename\1\0\1\bkey\6r\ntrash\1\0\1\bkey\6D\vremove\1\0\1\bkey\6d\vcreate\1\0\1\bkey\6a\frefresh\1\0\1\bkey\6R\19toggle_ignored\1\0\1\bkey\6I\17last_sibling\1\0\1\bkey\6J\18first_sibling\1\0\1\bkey\6K\17next_sibling\1\0\1\bkey\6>\17prev_sibling\1\0\1\bkey\6<\vtabnew\1\0\1\bkey\n<C-t>\nsplit\1\0\1\bkey\n<C-x>\vvsplit\1\0\1\bkey\n<C-v>\15close_node\1\0\1\bkey\6P\16parent_node\1\0\1\bkey\6p\acd\1\0\1\bkey\6O\acb\tedit\1\0\1\bkey\6o\1\0\1\16custom_only\2\1\0\1\nwidth\3(\rrenderer\1\0\1\18highlight_git\1\bgit\1\0\2\vignore\1\venable\1\1\0\2\17hijack_netrw\2\18disable_netrw\2\nsetup\23nvim_tree_callback\21nvim-tree.config\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\nù\4\0\0\6\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\14\0005\4\4\0005\5\3\0=\5\5\0045\5\6\0=\5\a\0045\5\b\0=\5\t\0045\5\n\0=\5\v\0045\5\f\0=\5\r\4=\4\15\3B\1\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\4\ahl\25GitSignsChangeDelete\ttext\b‚îÇ\vlinehl\21GitSignsChangeLn\nnumhl\21GitSignsChangeNr\14topdelete\1\0\4\ahl\19GitSignsDelete\ttext\b‚îÇ\vlinehl\21GitSignsDeleteLn\nnumhl\21GitSignsDeleteNr\vdelete\1\0\4\ahl\19GitSignsDelete\ttext\b‚îÇ\vlinehl\21GitSignsDeleteLn\nnumhl\21GitSignsDeleteNr\vchange\1\0\4\ahl\19GitSignsChange\ttext\b‚îÇ\vlinehl\21GitSignsChangeLn\nnumhl\21GitSignsChangeNr\badd\1\0\0\1\0\4\ahl\16GitSignsAdd\ttext\b‚îÇ\vlinehl\18GitSignsAddLn\nnumhl\18GitSignsAddNr\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n·\5\0\2\t\0\28\0D6\2\0\0009\2\1\2'\3\3\0=\3\2\0026\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\a\0'\a\b\0005\b\t\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\n\0'\a\v\0005\b\f\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\r\0'\a\14\0005\b\15\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\16\0'\a\17\0005\b\18\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\19\0'\a\20\0005\b\21\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\22\0'\a\23\0005\b\24\0B\2\6\0016\2\0\0009\2\4\0029\2\5\2\18\4\1\0'\5\6\0'\6\25\0'\a\26\0005\b\27\0B\2\6\1K\0\1\0\1\0\1\vsilent\2*<cmd>lua vim.lsp.buf.references()<cr>\agr\1\0\1\vsilent\2-<cmd>lua vim.diagnostic.open_float()<cr>\agi\1\0\1\vsilent\2,<cmd>lua vim.diagnostic.goto_next()<cr>\a]d\1\0\1\vsilent\2,<cmd>lua vim.diagnostic.goto_prev()<cr>\a[d\1\0\1\vsilent\2+<cmd>lua vim.lsp.buf.declaration()<cr>\n<c-}>\1\0\1\vsilent\2*<cmd>lua vim.lsp.buf.definition()<cr>\n<c-]>\1\0\1\vsilent\2:<cmd>lua vim.lsp.buf.hover({ border = \"single\" })<cr>\6K\6n\24nvim_buf_set_keymap\bapi\27v:lua.vim.lsp.omnifunc\romnifunc\abo\bvim±\6\1\0\14\0*\0O6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\0019\1\5\1B\1\1\0023\2\6\0005\3\a\0006\4\b\0\18\6\3\0B\4\2\4H\a\vÄ'\t\t\0\18\n\a\0&\t\n\t6\n\2\0009\n\n\n9\n\v\n\18\f\t\0005\r\f\0=\b\r\r=\t\14\rB\n\3\1F\a\3\3R\aÛ\1279\4\15\0019\4\16\0049\4\17\4+\5\2\0=\5\18\0049\4\15\0019\4\16\0049\4\17\0045\5\21\0005\6\20\0=\6\22\5=\5\19\0049\4\23\0009\4\24\0045\6\25\0=\1\26\6B\4\2\0019\4\27\0009\4\24\0045\6\28\0=\1\26\6=\2\29\6B\4\2\0019\4\30\0009\4\24\0045\6\31\0=\1\26\6=\2\29\6B\4\2\0019\4 \0009\4\24\0045\6!\0=\1\26\6=\2\29\6B\4\2\0019\4\"\0009\4\24\0045\6#\0=\1\26\6=\2\29\0065\a%\0005\b$\0=\b&\a=\a'\6B\4\2\0019\4(\0009\4\24\0045\6)\0=\1\26\6=\2\29\6B\4\2\1K\0\1\0\1\0\0\17intelephense\17init_options\15typescript\1\0\0\1\0\1\15serverPathB/usr/local/lib/node_modules/typescript/lib/tsserverlibrary.js\1\0\0\nvolar\1\0\0\vjsonls\1\0\0\16tailwindcss\14on_attach\1\0\0\thtml\17capabilities\1\0\0\nsetup\18rust_analyzer\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\19completionItem\15completion\17textDocument\vtexthl\ttext\1\0\1\nnumhl\5\16sign_define\afn\19DiagnosticSign\npairs\1\0\4\tInfo\b‚óè\nError\b‚óè\tHint\b‚óè\tWarn\b‚óè\0\29make_client_capabilities\rprotocol\blsp\bvim\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: vim-floaterm
time([[Config for vim-floaterm]], true)
try_loadstring("\27LJ\2\nø\3\0\0\3\0\18\1%6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0*\1\0\0=\1\4\0006\0\0\0009\0\1\0*\1\0\0=\1\5\0006\0\0\0009\0\1\0'\1\a\0=\1\6\0006\0\0\0009\0\1\0'\1\t\0=\1\b\0006\0\0\0009\0\1\0'\1\v\0=\1\n\0006\0\0\0009\0\1\0'\1\r\0=\1\f\0006\0\0\0009\0\1\0'\1\15\0=\1\14\0006\0\0\0009\0\16\0'\2\17\0B\0\2\1K\0\1\0B        highlight FloatermBorder ctermbg=none guibg=none\n    \bcmd\15<c-\\><c-]>\25floaterm_keymap_next\15<c-\\><c-[>\25floaterm_keymap_prev\14<c-\\><bs>\25floaterm_keymap_kill\14<c-\\><cr>\24floaterm_keymap_new\15<c-\\><c-\\>\27floaterm_keymap_toggle\19floaterm_width\20floaterm_height\tfish\19floaterm_shell\6g\bvimµÊÃô\19ô≥¶ˇ\3\0", "config", "vim-floaterm")
time([[Config for vim-floaterm]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nﬂ\4\0\0\a\0\25\0\0296\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\6\0'\5\a\0005\6\b\0B\1\5\0019\1\t\0005\3\v\0005\4\n\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\22\0005\5\19\0005\6\20\0=\6\21\5=\5\23\4=\4\24\3B\1\2\1K\0\1\0\16textobjects\vselect\1\0\0\fkeymaps\1\0\f\aic\23@conditional.inner\aab\17@block.outer\ail\16@loop.inner\aal\16@loop.outer\aaa\21@parameter.outer\aiC\17@class.inner\aia\20@paramter.inner\aaC\17@class.outer\aac\23@conditional.outer\aif\20@function.inner\aaf\20@function.outer\aib\17@block.inner\1\0\2\14lookahead\2\venable\2\14autopairs\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\26context_commentstring\1\0\0\1\0\1\venable\2\nsetup\1\0\1\fnoremap\2(:TSHighlightCapturesUnderCursor<cr>\n<f10>\6n\20nvim_set_keymap\bapi\bvim\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: vim-easy-align
time([[Config for vim-easy-align]], true)
try_loadstring("\27LJ\2\n|\0\0\6\0\a\0\0176\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0004\5\0\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\2\6\0'\3\4\0'\4\5\0004\5\0\0B\0\5\1K\0\1\0\6x\22<plug>(EasyAlign)\aga\6n\20nvim_set_keymap\bapi\bvim\0", "config", "vim-easy-align")
time([[Config for vim-easy-align]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
