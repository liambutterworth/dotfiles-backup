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
  fzf = {
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/fzf"
  },
  ["fzf.vim"] = {
    config = { "\27LJ\2\n’\a\0\0\6\0)\0F6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0016\2\5\0009\2\6\0025\4\a\0'\5\b\0B\2\3\2=\2\4\0016\1\2\0009\1\3\0015\2\n\0=\2\t\0016\1\2\0009\1\3\0015\2\r\0005\3\f\0=\3\14\2=\2\v\0019\1\15\0'\3\16\0'\4\17\0B\1\3\0019\1\15\0'\3\18\0'\4\19\0B\1\3\0019\1\15\0'\3\20\0'\4\21\0B\1\3\0019\1\15\0'\3\22\0'\4\23\0B\1\3\0019\1\24\0'\3\25\0'\4\26\0B\1\3\0019\1\24\0'\3\27\0'\4\28\0B\1\3\0019\1\24\0'\3\29\0'\4\30\0B\1\3\0019\1\24\0'\3\31\0'\4 \0B\1\3\0019\1\24\0'\3!\0'\4\"\0B\1\3\0019\1\24\0'\3#\0'\4$\0B\1\3\0019\1\24\0'\3%\0'\4&\0B\1\3\0019\1\24\0'\3'\0'\4(\0B\1\3\1K\0\1\0\15:Lines<cr>\r<space>l\18:Commits!<cr>\r<space>g\18:Helptags<cr>\r<space>?\18:History:<cr>\r<space>:\15:Files<cr>\16<space><cr>\17:Buffers<cr>\16<space><bs>\18:Snippets<cr>\17<space><tab>\f:Rg<cr>\19<space><space>\vnormal\30<plug>(fzf-complete-line)\15<c-x><c-l>\30<plug>(fzf-complete-path)\15<c-x><c-p>\30<plug>(fzf-complete-file)\15<c-x><c-j>\30<plug>(fzf-complete-word)\15<c-x><c-k>\vinsert\vwindow\1\0\0\1\0\3\vheight\4š³æÌ\t™³¦ÿ\3\nwidth\4š³æÌ\t™³¦ÿ\3\vborder\nsharp\15fzf_layout\1\0\3\vctrl-t\14tab split\vctrl-v\vvsplit\vctrl-s\nsplit\15fzf_action\6 \1\4\0\0\f--graph\19--color=always>--format=\"%C(red)%h %C(white)%s %C(green)%cr %C(blue)%an\"\vconcat\ntable\28fzf_commits_log_options\6g\bvim\14utils.map\frequire\0" },
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/fzf.vim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["goyo.vim"] = {
    config = { "\27LJ\2\n±\2\0\0\5\0\v\0\0166\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\1'\2\5\0=\2\4\0019\1\6\0'\3\a\0'\4\b\0B\1\3\0016\1\2\0009\1\t\1'\3\n\0B\1\2\1K\0\1\0¢\1        augroup Goyo\n            autocmd User GoyoEnter Limelight\n            autocmd User GoyoLeave Limelight! | colorscheme custom\n        augroup end\n    \bcmd\14:Goyo<cr>\6-\vnormal\0068\30limelight_conceal_ctermfg\6g\bvim\14utils.map\frequire\0" },
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/goyo.vim"
  },
  ["limelight.vim"] = {
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/limelight.vim"
  },
  ["nnn.vim"] = {
    config = { "\27LJ\2\nš\3\0\0\a\0\19\0\0286\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0015\4\4\0005\5\5\0=\5\6\0045\5\b\0005\6\a\0=\6\t\5=\5\n\4B\2\2\0019\2\v\0009\2\f\2'\4\r\0'\5\14\0005\6\15\0B\2\4\0019\2\v\0009\2\f\2'\4\16\0'\5\17\0005\6\18\0B\2\4\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\25:NnnPicker %:p:h<cr>\n<cr>f\1\0\2\fnoremap\2\vsilent\2\19:NnnPicker<cr>\r<cr><cr>\vnormal\bmap\vlayout\vwindow\1\0\0\1\0\3\vheight\4š³æÌ\t™³¦ÿ\3\nwidth\4š³æÌ\t™³¦ÿ\3\vborder\nsharp\vaction\1\0\3\n<c-t>\btab\n<c-v>\vvsplit\n<c-s>\nsplit\1\0\3\fcommand\6n\18replace_netrw\3\1\25set_default_mappings\3\0\nsetup\bnnn\nutils\frequire\0" },
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/nnn.vim"
  },
  ["nvim-compe"] = {
    config = { "\27LJ\2\n£\1\0\0\3\2\a\1\0246\0\0\0009\0\1\0009\0\2\0B\0\1\2\t\0\0\0X\0\4€-\0\0\0'\2\3\0D\0\2\0X\0\r€-\0\1\0009\0\4\0B\0\1\2\15\0\0\0X\1\4€-\0\0\0'\2\5\0D\0\2\0X\0\4€6\0\0\0009\0\1\0009\0\6\0D\0\1\0K\0\1\0\2À\1À\19compe#complete\n<tab>\14backspace\n<c-n>\15pumvisible\afn\bvim\2b\0\0\3\1\5\1\0146\0\0\0009\0\1\0009\0\2\0B\0\1\2\t\0\0\0X\0\4€-\0\0\0'\2\3\0D\0\2\0X\0\3€-\0\0\0'\2\4\0D\0\2\0K\0\1\0\2À\f<s-tab>\n<c-p>\15pumvisible\afn\bvim\2ð\3\1\0\t\0\26\00006\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0026\3\0\0'\5\4\0B\3\2\0029\4\5\0005\6\a\0005\a\6\0=\a\b\6B\4\2\0013\4\t\0007\4\n\0003\4\v\0007\4\f\0009\4\r\3'\6\14\0'\a\15\0005\b\16\0B\4\4\0019\4\r\3'\6\17\0'\a\18\0005\b\19\0B\4\4\0019\4\20\3'\6\17\0'\a\18\0005\b\21\0B\4\4\0019\4\r\3'\6\22\0'\a\23\0005\b\24\0B\4\4\0019\4\20\3'\6\22\0'\a\23\0005\b\25\0B\4\4\0012\0\0€K\0\1\0\1\0\1\texpr\2\1\0\1\texpr\2\27v:lua.s_tab_complete()\f<s-tab>\1\0\1\texpr\2\vselect\1\0\1\texpr\2\25v:lua.tab_complete()\n<tab>\1\0\2\texpr\2\vsilent\2\26compe#confirm('<cr>')\t<cr>\vinsert\19s_tab_complete\0\17tab_complete\0\vsource\1\0\0\1\0\6\tpath\2\nvsnip\2\rnvim_lua\2\rnvim_lsp\2\tcalc\2\vbuffer\2\nsetup\14utils.map\17utils.escape\16utils.check\ncompe\frequire\0" },
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nï\4\0\2\t\1\21\0>5\2\0\0006\3\1\0009\3\2\3'\4\4\0=\4\3\3-\3\0\0009\3\5\0039\3\6\3\18\5\1\0'\6\a\0'\a\b\0\18\b\2\0B\3\5\1-\3\0\0009\3\5\0039\3\6\3\18\5\1\0'\6\t\0'\a\n\0\18\b\2\0B\3\5\1-\3\0\0009\3\5\0039\3\6\3\18\5\1\0'\6\v\0'\a\f\0\18\b\2\0B\3\5\1-\3\0\0009\3\5\0039\3\6\3\18\5\1\0'\6\r\0'\a\14\0\18\b\2\0B\3\5\1-\3\0\0009\3\5\0039\3\6\3\18\5\1\0'\6\15\0'\a\16\0\18\b\2\0B\3\5\1-\3\0\0009\3\5\0039\3\6\3\18\5\1\0'\6\17\0'\a\18\0\18\b\2\0B\3\5\1-\3\0\0009\3\5\0039\3\6\3\18\5\1\0'\6\19\0'\a\20\0\18\b\2\0B\3\5\1K\0\1\0\0À\21<cmd>LspStop<cr>\agS\24<cmd>LspRestart<cr>\ags<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<cr>\agi0<cmd>lua vim.lsp.diagnostic.goto_next()<cr>\a]d0<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>\a[d*<cmd>lua vim.lsp.buf.definition()<cr>\n<c-]>:<cmd>lua vim.lsp.buf.hover({ border = \"single\" })<cr>\6K\vnormal\bmap\27v:lua.vim.lsp.omnifunc\romnifunc\abo\bvim\1\0\2\fnoremap\2\vsilent\2 \4\1\0\a\0\31\0=6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\0029\2\5\0029\2\6\2B\2\1\0023\3\a\0009\4\b\0029\4\t\0049\4\n\4+\5\2\0=\5\v\0049\4\b\0029\4\t\0049\4\n\0045\5\14\0005\6\r\0=\6\15\5=\5\f\0049\4\16\0019\4\17\0045\6\18\0=\2\19\6B\4\2\0019\4\20\0019\4\17\0045\6\21\0=\2\19\6=\3\22\6B\4\2\0019\4\23\0019\4\17\0045\6\24\0=\2\19\6=\3\22\6B\4\2\0019\4\25\0019\4\17\0045\6\26\0=\2\19\6=\3\22\6B\4\2\0019\4\27\0019\4\17\0045\6\28\0=\2\19\6=\3\22\6B\4\2\0019\4\29\0019\4\17\0045\6\30\0=\2\19\6=\3\22\6B\4\2\0012\0\0€K\0\1\0\1\0\0\17intelephense\1\0\0\nvuels\1\0\0\vjsonls\1\0\0\ncssls\14on_attach\1\0\0\thtml\17capabilities\1\0\0\nsetup\18rust_analyzer\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\19completionItem\15completion\17textDocument\0\29make_client_capabilities\rprotocol\blsp\bvim\14lspconfig\nutils\frequire\0" },
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n©\4\0\0\b\0\20\0\0266\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0'\4\4\0'\5\5\0B\2\3\0019\2\6\0015\4\b\0005\5\a\0=\5\t\0045\5\n\0=\5\v\0045\5\f\0=\5\r\0045\5\17\0005\6\14\0005\a\15\0=\a\16\6=\6\18\5=\5\19\4B\2\2\1K\0\1\0\16textobjects\vselect\1\0\0\fkeymaps\1\0\f\aal\16@loop.outer\aac\23@conditional.outer\ail\16@loop.inner\aaa\21@parameter.outer\aaf\20@function.outer\aia\20@paramter.inner\aib\17@block.inner\aic\23@conditional.inner\aab\17@block.outer\aif\20@function.inner\aiC\17@class.inner\aaC\17@class.outer\1\0\2\venable\2\14lookahead\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\26context_commentstring\1\0\0\1\0\1\venable\2\nsetup(:TSHighlightCapturesUnderCursor<cr>\n<f10>\vnormal\28nvim-treesitter.configs\14utils.map\frequire\0" },
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
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-easy-align"] = {
    config = { "\27LJ\2\nl\0\0\5\0\6\0\f6\0\0\0'\2\1\0B\0\2\0029\1\2\0'\3\3\0'\4\4\0B\1\3\0019\1\5\0'\3\3\0'\4\4\0B\1\3\1K\0\1\0\vvisual\22<plug>(EasyAlign)\aga\vnormal\14utils.map\frequire\0" },
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/vim-easy-align"
  },
  ["vim-eunuch"] = {
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/vim-eunuch"
  },
  ["vim-floaterm"] = {
    config = { "\27LJ\2\nÉ\2\0\0\2\0\14\1\0296\0\0\0009\0\1\0*\1\0\0=\1\2\0006\0\0\0009\0\1\0*\1\0\0=\1\3\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0'\1\a\0=\1\6\0006\0\0\0009\0\1\0'\1\t\0=\1\b\0006\0\0\0009\0\1\0'\1\v\0=\1\n\0006\0\0\0009\0\1\0'\1\r\0=\1\f\0K\0\1\0\15<c-\\><c-]>\25floaterm_keymap_next\15<c-\\><c-[>\25floaterm_keymap_prev\14<c-\\><bs>\25floaterm_keymap_kill\14<c-\\><cr>\24floaterm_keymap_new\15<c-\\><c-\\>\27floaterm_keymap_toggle\19floaterm_width\20floaterm_height\6g\bvimµæÌ™\19™³¦ÿ\3\0" },
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/vim-floaterm"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/vim-fugitive"
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
    config = { "\27LJ\2\n\0\0\3\1\5\0\0156\0\0\0009\0\1\0009\0\2\0)\2\1\0B\0\2\2\15\0\0\0X\1\4€-\0\0\0'\2\3\0D\0\2\0X\0\3€-\0\0\0'\2\4\0D\0\2\0K\0\1\0\0À\n<c-j>!<plug>(vsnip-expand-or-jump)\20vsnip#available\afn\bvimÓ\1\0\1\4\1\6\2\30\t\0\0\0X\1\v€6\1\0\0009\1\1\0019\1\2\1)\3\1\0B\1\2\2\15\0\1\0X\2\4€-\1\0\0'\3\3\0D\1\2\0X\1\16€\t\0\1\0X\1\v€6\1\0\0009\1\1\0019\1\2\1)\3ÿÿB\1\2\2\15\0\1\0X\2\4€-\1\0\0'\3\4\0D\1\2\0X\1\3€-\1\0\0'\3\5\0D\1\2\0K\0\1\0\0À\n<c-k>\28<plug>(vsnip-jump-prev)\28<plug>(vsnip-jump-next)\19vsnip#jumpable\afn\bvim\2þÿÿÿ\31ñ\5\1\0\a\0,\0F6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\0026\3\3\0009\3\6\0039\3\a\3'\5\b\0B\3\2\2=\3\5\0026\2\3\0009\2\4\0025\3\v\0005\4\n\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\3=\3\t\0023\2\17\0007\2\18\0003\2\19\0007\2\20\0009\2\21\1'\4\22\0'\5\23\0B\2\3\0019\2\21\1'\4\24\0'\5\25\0B\2\3\0019\2\26\1'\4\27\0'\5\28\0B\2\3\0019\2\26\1'\4\29\0'\5\30\0B\2\3\0019\2\26\1'\4\31\0'\5 \0B\2\3\0019\2!\1'\4\"\0'\5#\0005\6$\0B\2\4\0019\2%\1'\4\"\0'\5&\0005\6'\0B\2\4\0019\2!\1'\4(\0'\5)\0005\6*\0B\2\4\0019\2%\1'\4(\0'\5)\0005\6+\0B\2\4\0012\0\0€K\0\1\0\1\0\1\texpr\2\1\0\1\texpr\2\19v:lua.jump(-1)\n<c-k>\1\0\1\texpr\2\18v:lua.jump(1)\vselect\1\0\1\texpr\2\27v:lua.expand_or_jump()\n<c-j>\vinsert\23<cmd>VsnipOpen<cr>\a\\v\29<cmd>VsnipOpenVsplit<cr>\a\\s\27<cmd>VsnipOpenEdit<cr>\a\\\\\vnormal\27<plug>(vsnip-cut-text)\a\\c#<plug>(vsnip-select-text)<esc>\a\\y\vvisual\tjump\0\19expand_or_jump\0\bphp\1\3\0\0\bphp\6c\bvue\1\5\0\0\thtml\bcss\15javascript\6c\15javascript\1\0\0\1\3\0\0\15javascript\6c\20vsnip_filetypes\28~/.config/nvim/snippets\vexpand\afn\22vsnip_snippet_dir\6g\bvim\14utils.map\17utils.escape\frequire\0" },
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  vimwiki = {
    config = { "\27LJ\2\nˆ\4\0\0\5\0\v\0\0186\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0014\2\3\0005\3\5\0>\3\1\2=\2\4\0019\1\6\0'\3\a\0'\4\b\0B\1\3\0016\1\2\0009\1\t\1'\3\n\0B\1\2\1K\0\1\0Ñ\2        augroup Vimwiki\n            autocmd FileType vimwiki nmap <c-]> <plug>VimwikiFollowLink\n            autocmd FileType vimwiki nmap <c-t> <plug>VimwikiGoBackLink\n            autocmd FileType vimwiki nmap <c-n> <plug>VimwikiNextLink\n            autocmd FileType vimwiki nmap <c-p> <plug>VimwikiPrevLink\n        augroup end\n    \bcmd\22:VimwikiIndex<cr>\6+\vnormal\1\0\2\tpath\19~/Dropbox/Wiki\vsyntax\rmarkdown\17vimwiki_list\6g\bvim\14utils.map\frequire\0" },
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/vimwiki"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: vim-floaterm
time([[Config for vim-floaterm]], true)
try_loadstring("\27LJ\2\nÉ\2\0\0\2\0\14\1\0296\0\0\0009\0\1\0*\1\0\0=\1\2\0006\0\0\0009\0\1\0*\1\0\0=\1\3\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0'\1\a\0=\1\6\0006\0\0\0009\0\1\0'\1\t\0=\1\b\0006\0\0\0009\0\1\0'\1\v\0=\1\n\0006\0\0\0009\0\1\0'\1\r\0=\1\f\0K\0\1\0\15<c-\\><c-]>\25floaterm_keymap_next\15<c-\\><c-[>\25floaterm_keymap_prev\14<c-\\><bs>\25floaterm_keymap_kill\14<c-\\><cr>\24floaterm_keymap_new\15<c-\\><c-\\>\27floaterm_keymap_toggle\19floaterm_width\20floaterm_height\6g\bvimµæÌ™\19™³¦ÿ\3\0", "config", "vim-floaterm")
time([[Config for vim-floaterm]], false)
-- Config for: goyo.vim
time([[Config for goyo.vim]], true)
try_loadstring("\27LJ\2\n±\2\0\0\5\0\v\0\0166\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\1'\2\5\0=\2\4\0019\1\6\0'\3\a\0'\4\b\0B\1\3\0016\1\2\0009\1\t\1'\3\n\0B\1\2\1K\0\1\0¢\1        augroup Goyo\n            autocmd User GoyoEnter Limelight\n            autocmd User GoyoLeave Limelight! | colorscheme custom\n        augroup end\n    \bcmd\14:Goyo<cr>\6-\vnormal\0068\30limelight_conceal_ctermfg\6g\bvim\14utils.map\frequire\0", "config", "goyo.vim")
time([[Config for goyo.vim]], false)
-- Config for: vim-vsnip
time([[Config for vim-vsnip]], true)
try_loadstring("\27LJ\2\n\0\0\3\1\5\0\0156\0\0\0009\0\1\0009\0\2\0)\2\1\0B\0\2\2\15\0\0\0X\1\4€-\0\0\0'\2\3\0D\0\2\0X\0\3€-\0\0\0'\2\4\0D\0\2\0K\0\1\0\0À\n<c-j>!<plug>(vsnip-expand-or-jump)\20vsnip#available\afn\bvimÓ\1\0\1\4\1\6\2\30\t\0\0\0X\1\v€6\1\0\0009\1\1\0019\1\2\1)\3\1\0B\1\2\2\15\0\1\0X\2\4€-\1\0\0'\3\3\0D\1\2\0X\1\16€\t\0\1\0X\1\v€6\1\0\0009\1\1\0019\1\2\1)\3ÿÿB\1\2\2\15\0\1\0X\2\4€-\1\0\0'\3\4\0D\1\2\0X\1\3€-\1\0\0'\3\5\0D\1\2\0K\0\1\0\0À\n<c-k>\28<plug>(vsnip-jump-prev)\28<plug>(vsnip-jump-next)\19vsnip#jumpable\afn\bvim\2þÿÿÿ\31ñ\5\1\0\a\0,\0F6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\0026\3\3\0009\3\6\0039\3\a\3'\5\b\0B\3\2\2=\3\5\0026\2\3\0009\2\4\0025\3\v\0005\4\n\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\3=\3\t\0023\2\17\0007\2\18\0003\2\19\0007\2\20\0009\2\21\1'\4\22\0'\5\23\0B\2\3\0019\2\21\1'\4\24\0'\5\25\0B\2\3\0019\2\26\1'\4\27\0'\5\28\0B\2\3\0019\2\26\1'\4\29\0'\5\30\0B\2\3\0019\2\26\1'\4\31\0'\5 \0B\2\3\0019\2!\1'\4\"\0'\5#\0005\6$\0B\2\4\0019\2%\1'\4\"\0'\5&\0005\6'\0B\2\4\0019\2!\1'\4(\0'\5)\0005\6*\0B\2\4\0019\2%\1'\4(\0'\5)\0005\6+\0B\2\4\0012\0\0€K\0\1\0\1\0\1\texpr\2\1\0\1\texpr\2\19v:lua.jump(-1)\n<c-k>\1\0\1\texpr\2\18v:lua.jump(1)\vselect\1\0\1\texpr\2\27v:lua.expand_or_jump()\n<c-j>\vinsert\23<cmd>VsnipOpen<cr>\a\\v\29<cmd>VsnipOpenVsplit<cr>\a\\s\27<cmd>VsnipOpenEdit<cr>\a\\\\\vnormal\27<plug>(vsnip-cut-text)\a\\c#<plug>(vsnip-select-text)<esc>\a\\y\vvisual\tjump\0\19expand_or_jump\0\bphp\1\3\0\0\bphp\6c\bvue\1\5\0\0\thtml\bcss\15javascript\6c\15javascript\1\0\0\1\3\0\0\15javascript\6c\20vsnip_filetypes\28~/.config/nvim/snippets\vexpand\afn\22vsnip_snippet_dir\6g\bvim\14utils.map\17utils.escape\frequire\0", "config", "vim-vsnip")
time([[Config for vim-vsnip]], false)
-- Config for: vim-easy-align
time([[Config for vim-easy-align]], true)
try_loadstring("\27LJ\2\nl\0\0\5\0\6\0\f6\0\0\0'\2\1\0B\0\2\0029\1\2\0'\3\3\0'\4\4\0B\1\3\0019\1\5\0'\3\3\0'\4\4\0B\1\3\1K\0\1\0\vvisual\22<plug>(EasyAlign)\aga\vnormal\14utils.map\frequire\0", "config", "vim-easy-align")
time([[Config for vim-easy-align]], false)
-- Config for: vimwiki
time([[Config for vimwiki]], true)
try_loadstring("\27LJ\2\nˆ\4\0\0\5\0\v\0\0186\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0014\2\3\0005\3\5\0>\3\1\2=\2\4\0019\1\6\0'\3\a\0'\4\b\0B\1\3\0016\1\2\0009\1\t\1'\3\n\0B\1\2\1K\0\1\0Ñ\2        augroup Vimwiki\n            autocmd FileType vimwiki nmap <c-]> <plug>VimwikiFollowLink\n            autocmd FileType vimwiki nmap <c-t> <plug>VimwikiGoBackLink\n            autocmd FileType vimwiki nmap <c-n> <plug>VimwikiNextLink\n            autocmd FileType vimwiki nmap <c-p> <plug>VimwikiPrevLink\n        augroup end\n    \bcmd\22:VimwikiIndex<cr>\6+\vnormal\1\0\2\tpath\19~/Dropbox/Wiki\vsyntax\rmarkdown\17vimwiki_list\6g\bvim\14utils.map\frequire\0", "config", "vimwiki")
time([[Config for vimwiki]], false)
-- Config for: nnn.vim
time([[Config for nnn.vim]], true)
try_loadstring("\27LJ\2\nš\3\0\0\a\0\19\0\0286\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0015\4\4\0005\5\5\0=\5\6\0045\5\b\0005\6\a\0=\6\t\5=\5\n\4B\2\2\0019\2\v\0009\2\f\2'\4\r\0'\5\14\0005\6\15\0B\2\4\0019\2\v\0009\2\f\2'\4\16\0'\5\17\0005\6\18\0B\2\4\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\25:NnnPicker %:p:h<cr>\n<cr>f\1\0\2\fnoremap\2\vsilent\2\19:NnnPicker<cr>\r<cr><cr>\vnormal\bmap\vlayout\vwindow\1\0\0\1\0\3\vheight\4š³æÌ\t™³¦ÿ\3\nwidth\4š³æÌ\t™³¦ÿ\3\vborder\nsharp\vaction\1\0\3\n<c-t>\btab\n<c-v>\vvsplit\n<c-s>\nsplit\1\0\3\fcommand\6n\18replace_netrw\3\1\25set_default_mappings\3\0\nsetup\bnnn\nutils\frequire\0", "config", "nnn.vim")
time([[Config for nnn.vim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nï\4\0\2\t\1\21\0>5\2\0\0006\3\1\0009\3\2\3'\4\4\0=\4\3\3-\3\0\0009\3\5\0039\3\6\3\18\5\1\0'\6\a\0'\a\b\0\18\b\2\0B\3\5\1-\3\0\0009\3\5\0039\3\6\3\18\5\1\0'\6\t\0'\a\n\0\18\b\2\0B\3\5\1-\3\0\0009\3\5\0039\3\6\3\18\5\1\0'\6\v\0'\a\f\0\18\b\2\0B\3\5\1-\3\0\0009\3\5\0039\3\6\3\18\5\1\0'\6\r\0'\a\14\0\18\b\2\0B\3\5\1-\3\0\0009\3\5\0039\3\6\3\18\5\1\0'\6\15\0'\a\16\0\18\b\2\0B\3\5\1-\3\0\0009\3\5\0039\3\6\3\18\5\1\0'\6\17\0'\a\18\0\18\b\2\0B\3\5\1-\3\0\0009\3\5\0039\3\6\3\18\5\1\0'\6\19\0'\a\20\0\18\b\2\0B\3\5\1K\0\1\0\0À\21<cmd>LspStop<cr>\agS\24<cmd>LspRestart<cr>\ags<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<cr>\agi0<cmd>lua vim.lsp.diagnostic.goto_next()<cr>\a]d0<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>\a[d*<cmd>lua vim.lsp.buf.definition()<cr>\n<c-]>:<cmd>lua vim.lsp.buf.hover({ border = \"single\" })<cr>\6K\vnormal\bmap\27v:lua.vim.lsp.omnifunc\romnifunc\abo\bvim\1\0\2\fnoremap\2\vsilent\2 \4\1\0\a\0\31\0=6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\0029\2\5\0029\2\6\2B\2\1\0023\3\a\0009\4\b\0029\4\t\0049\4\n\4+\5\2\0=\5\v\0049\4\b\0029\4\t\0049\4\n\0045\5\14\0005\6\r\0=\6\15\5=\5\f\0049\4\16\0019\4\17\0045\6\18\0=\2\19\6B\4\2\0019\4\20\0019\4\17\0045\6\21\0=\2\19\6=\3\22\6B\4\2\0019\4\23\0019\4\17\0045\6\24\0=\2\19\6=\3\22\6B\4\2\0019\4\25\0019\4\17\0045\6\26\0=\2\19\6=\3\22\6B\4\2\0019\4\27\0019\4\17\0045\6\28\0=\2\19\6=\3\22\6B\4\2\0019\4\29\0019\4\17\0045\6\30\0=\2\19\6=\3\22\6B\4\2\0012\0\0€K\0\1\0\1\0\0\17intelephense\1\0\0\nvuels\1\0\0\vjsonls\1\0\0\ncssls\14on_attach\1\0\0\thtml\17capabilities\1\0\0\nsetup\18rust_analyzer\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\19completionItem\15completion\17textDocument\0\29make_client_capabilities\rprotocol\blsp\bvim\14lspconfig\nutils\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: fzf.vim
time([[Config for fzf.vim]], true)
try_loadstring("\27LJ\2\n’\a\0\0\6\0)\0F6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0016\2\5\0009\2\6\0025\4\a\0'\5\b\0B\2\3\2=\2\4\0016\1\2\0009\1\3\0015\2\n\0=\2\t\0016\1\2\0009\1\3\0015\2\r\0005\3\f\0=\3\14\2=\2\v\0019\1\15\0'\3\16\0'\4\17\0B\1\3\0019\1\15\0'\3\18\0'\4\19\0B\1\3\0019\1\15\0'\3\20\0'\4\21\0B\1\3\0019\1\15\0'\3\22\0'\4\23\0B\1\3\0019\1\24\0'\3\25\0'\4\26\0B\1\3\0019\1\24\0'\3\27\0'\4\28\0B\1\3\0019\1\24\0'\3\29\0'\4\30\0B\1\3\0019\1\24\0'\3\31\0'\4 \0B\1\3\0019\1\24\0'\3!\0'\4\"\0B\1\3\0019\1\24\0'\3#\0'\4$\0B\1\3\0019\1\24\0'\3%\0'\4&\0B\1\3\0019\1\24\0'\3'\0'\4(\0B\1\3\1K\0\1\0\15:Lines<cr>\r<space>l\18:Commits!<cr>\r<space>g\18:Helptags<cr>\r<space>?\18:History:<cr>\r<space>:\15:Files<cr>\16<space><cr>\17:Buffers<cr>\16<space><bs>\18:Snippets<cr>\17<space><tab>\f:Rg<cr>\19<space><space>\vnormal\30<plug>(fzf-complete-line)\15<c-x><c-l>\30<plug>(fzf-complete-path)\15<c-x><c-p>\30<plug>(fzf-complete-file)\15<c-x><c-j>\30<plug>(fzf-complete-word)\15<c-x><c-k>\vinsert\vwindow\1\0\0\1\0\3\vheight\4š³æÌ\t™³¦ÿ\3\nwidth\4š³æÌ\t™³¦ÿ\3\vborder\nsharp\15fzf_layout\1\0\3\vctrl-t\14tab split\vctrl-v\vvsplit\vctrl-s\nsplit\15fzf_action\6 \1\4\0\0\f--graph\19--color=always>--format=\"%C(red)%h %C(white)%s %C(green)%cr %C(blue)%an\"\vconcat\ntable\28fzf_commits_log_options\6g\bvim\14utils.map\frequire\0", "config", "fzf.vim")
time([[Config for fzf.vim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n©\4\0\0\b\0\20\0\0266\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0'\4\4\0'\5\5\0B\2\3\0019\2\6\0015\4\b\0005\5\a\0=\5\t\0045\5\n\0=\5\v\0045\5\f\0=\5\r\0045\5\17\0005\6\14\0005\a\15\0=\a\16\6=\6\18\5=\5\19\4B\2\2\1K\0\1\0\16textobjects\vselect\1\0\0\fkeymaps\1\0\f\aal\16@loop.outer\aac\23@conditional.outer\ail\16@loop.inner\aaa\21@parameter.outer\aaf\20@function.outer\aia\20@paramter.inner\aib\17@block.inner\aic\23@conditional.inner\aab\17@block.outer\aif\20@function.inner\aiC\17@class.inner\aaC\17@class.outer\1\0\2\venable\2\14lookahead\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\26context_commentstring\1\0\0\1\0\1\venable\2\nsetup(:TSHighlightCapturesUnderCursor<cr>\n<f10>\vnormal\28nvim-treesitter.configs\14utils.map\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-compe
time([[Config for nvim-compe]], true)
try_loadstring("\27LJ\2\n£\1\0\0\3\2\a\1\0246\0\0\0009\0\1\0009\0\2\0B\0\1\2\t\0\0\0X\0\4€-\0\0\0'\2\3\0D\0\2\0X\0\r€-\0\1\0009\0\4\0B\0\1\2\15\0\0\0X\1\4€-\0\0\0'\2\5\0D\0\2\0X\0\4€6\0\0\0009\0\1\0009\0\6\0D\0\1\0K\0\1\0\2À\1À\19compe#complete\n<tab>\14backspace\n<c-n>\15pumvisible\afn\bvim\2b\0\0\3\1\5\1\0146\0\0\0009\0\1\0009\0\2\0B\0\1\2\t\0\0\0X\0\4€-\0\0\0'\2\3\0D\0\2\0X\0\3€-\0\0\0'\2\4\0D\0\2\0K\0\1\0\2À\f<s-tab>\n<c-p>\15pumvisible\afn\bvim\2ð\3\1\0\t\0\26\00006\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0026\3\0\0'\5\4\0B\3\2\0029\4\5\0005\6\a\0005\a\6\0=\a\b\6B\4\2\0013\4\t\0007\4\n\0003\4\v\0007\4\f\0009\4\r\3'\6\14\0'\a\15\0005\b\16\0B\4\4\0019\4\r\3'\6\17\0'\a\18\0005\b\19\0B\4\4\0019\4\20\3'\6\17\0'\a\18\0005\b\21\0B\4\4\0019\4\r\3'\6\22\0'\a\23\0005\b\24\0B\4\4\0019\4\20\3'\6\22\0'\a\23\0005\b\25\0B\4\4\0012\0\0€K\0\1\0\1\0\1\texpr\2\1\0\1\texpr\2\27v:lua.s_tab_complete()\f<s-tab>\1\0\1\texpr\2\vselect\1\0\1\texpr\2\25v:lua.tab_complete()\n<tab>\1\0\2\texpr\2\vsilent\2\26compe#confirm('<cr>')\t<cr>\vinsert\19s_tab_complete\0\17tab_complete\0\vsource\1\0\0\1\0\6\tpath\2\nvsnip\2\rnvim_lua\2\rnvim_lsp\2\tcalc\2\vbuffer\2\nsetup\14utils.map\17utils.escape\16utils.check\ncompe\frequire\0", "config", "nvim-compe")
time([[Config for nvim-compe]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
