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
    config = { "\27LJ\2\nÿ\a\0\0\a\0(\0^6\0\0\0009\0\1\0'\2\2\0006\3\3\0009\3\4\0035\5\5\0'\6\6\0B\3\3\0A\0\1\0016\0\0\0009\0\1\0'\2\a\0005\3\b\0B\0\3\0016\0\0\0009\0\1\0'\2\t\0005\3\v\0005\4\n\0=\4\f\3B\0\3\0016\0\0\0009\0\r\0009\0\14\0'\2\15\0'\3\16\0B\0\3\0016\0\0\0009\0\r\0009\0\14\0'\2\17\0'\3\18\0B\0\3\0016\0\0\0009\0\r\0009\0\14\0'\2\19\0'\3\20\0B\0\3\0016\0\0\0009\0\r\0009\0\14\0'\2\21\0'\3\22\0B\0\3\0016\0\0\0009\0\r\0009\0\23\0'\2\24\0'\3\25\0B\0\3\0016\0\0\0009\0\r\0009\0\23\0'\2\26\0'\3\27\0B\0\3\0016\0\0\0009\0\r\0009\0\23\0'\2\28\0'\3\29\0B\0\3\0016\0\0\0009\0\r\0009\0\23\0'\2\30\0'\3\31\0B\0\3\0016\0\0\0009\0\r\0009\0\23\0'\2 \0'\3!\0B\0\3\0016\0\0\0009\0\r\0009\0\23\0'\2\"\0'\3#\0B\0\3\0016\0\0\0009\0\r\0009\0\23\0'\2$\0'\3%\0B\0\3\0016\0\0\0009\0\r\0009\0\23\0'\2&\0'\3'\0B\0\3\1K\0\1\0\15:Lines<cr>\r<space>l\18:Commits!<cr>\r<space>g\18:Helptags<cr>\r<space>?\18:History:<cr>\r<space>:\15:Files<cr>\16<space><cr>\17:Buffers<cr>\16<space><bs>\18:Snippets<cr>\17<space><tab>\f:Rg<cr>\19<space><space>\vnormal\30<plug>(fzf-complete-line)\15<c-x><c-l>\30<plug>(fzf-complete-path)\15<c-x><c-p>\30<plug>(fzf-complete-file)\15<c-x><c-j>\30<plug>(fzf-complete-word)\15<c-x><c-k>\vinsert\bmap\vwindow\1\0\0\1\0\3\vheight\4ö≥ÊÃ\tô≥¶ˇ\3\nwidth\4ö≥ÊÃ\tô≥¶ˇ\3\vborder\nsharp\15fzf_layout\1\0\2\vctrl-t\14tab split\vctrl-s\nsplit\15fzf_action\6 \1\4\0\0\f--graph\19--color=always>--format=\"%C(red)%h %C(white)%s %C(green)%cr %C(blue)%an\"\vconcat\ntable\28fzf_commits_log_options\bset\bapi\0" },
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/fzf.vim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["goyo.vim"] = {
    config = { "\27LJ\2\n•\2\0\0\4\0\n\0\0166\0\0\0009\0\1\0'\2\2\0'\3\3\0B\0\3\0016\0\0\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0B\0\3\0016\0\0\0009\0\b\0'\2\t\0B\0\2\1K\0\1\0¢\1        augroup Goyo\n            autocmd User GoyoEnter Limelight\n            autocmd User GoyoLeave Limelight! | colorscheme custom\n        augroup end\n    \bcmd\14:Goyo<cr>\6\\\vnormal\bmap\0068\30limelight_conceal_ctermfg\bset\bapi\0" },
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/goyo.vim"
  },
  ["limelight.vim"] = {
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/limelight.vim"
  },
  ["nnn.vim"] = {
    config = { "\27LJ\2\nå\3\0\0\6\0\19\0\0276\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\4\0=\4\5\0035\4\a\0005\5\6\0=\5\b\4=\4\t\3B\1\2\0016\1\n\0009\1\v\0019\1\f\1'\3\r\0'\4\14\0005\5\15\0B\1\4\0016\1\n\0009\1\v\0019\1\f\1'\3\16\0'\4\17\0005\5\18\0B\1\4\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\19:NnnPicker<cr>\t<cr>\1\0\2\vsilent\2\fnoremap\2\25:NnnPicker %:p:h<cr>\6-\vnormal\bmap\bapi\vlayout\vwindow\1\0\0\1\0\3\vheight\4ö≥ÊÃ\tô≥¶ˇ\3\nwidth\4ö≥ÊÃ\tô≥¶ˇ\3\vborder\nsharp\vaction\1\0\3\n<c-v>\vvsplit\n<c-s>\nsplit\n<c-t>\btab\1\0\3\fcommand\6n\18replace_netrw\3\1\25set_default_mappings\3\0\nsetup\bnnn\frequire\0" },
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/nnn.vim"
  },
  ["nvim-compe"] = {
    config = { "\27LJ\2\nµ\1\0\0\3\0\b\1\0266\0\0\0009\0\1\0009\0\2\0B\0\1\2\t\0\0\0X\0\5Ä6\0\0\0009\0\3\0'\2\4\0D\0\2\0X\0\14Ä6\0\0\0009\0\5\0B\0\1\2\15\0\0\0X\1\5Ä6\0\0\0009\0\3\0'\2\6\0D\0\2\0X\0\4Ä6\0\0\0009\0\1\0009\0\a\0D\0\1\0K\0\1\0\19compe#complete\n<tab>\20check_backspace\n<c-n>\vescape\15pumvisible\bvim\bapi\2p\0\0\3\0\6\1\0166\0\0\0009\0\1\0009\0\2\0B\0\1\2\t\0\0\0X\0\5Ä6\0\0\0009\0\3\0'\2\4\0D\0\2\0X\0\4Ä6\0\0\0009\0\3\0'\2\5\0D\0\2\0K\0\1\0\f<s-tab>\n<c-p>\vescape\15pumvisible\bvim\bapi\2’\3\1\0\6\0\25\00006\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\3B\1\2\0013\1\6\0007\1\a\0003\1\b\0007\1\t\0006\1\n\0009\1\v\0019\1\f\1'\3\r\0'\4\14\0005\5\15\0B\1\4\0016\1\n\0009\1\v\0019\1\f\1'\3\16\0'\4\17\0005\5\18\0B\1\4\0016\1\n\0009\1\v\0019\1\19\1'\3\16\0'\4\17\0005\5\20\0B\1\4\0016\1\n\0009\1\v\0019\1\f\1'\3\21\0'\4\22\0005\5\23\0B\1\4\0016\1\n\0009\1\v\0019\1\19\1'\3\21\0'\4\22\0005\5\24\0B\1\4\1K\0\1\0\1\0\1\texpr\2\1\0\1\texpr\2\27v:lua.s_tab_complete()\f<s-tab>\1\0\1\texpr\2\vselect\1\0\1\texpr\2\25v:lua.tab_complete()\n<tab>\1\0\2\vsilent\2\texpr\2\26compe#confirm('<cr>')\t<cr>\vinsert\bmap\bapi\19s_tab_complete\0\17tab_complete\0\vsource\1\0\0\1\0\6\rnvim_lua\2\vbuffer\2\nvsnip\2\tpath\2\rnvim_lsp\2\tcalc\2\nsetup\ncompe\frequire\0" },
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n´\4\0\2\t\0\19\00065\2\0\0006\3\1\0009\3\2\0039\3\3\0039\3\4\3'\5\5\0'\6\6\0B\3\3\0016\3\1\0009\3\2\0039\3\a\0039\3\b\3\18\5\1\0'\6\t\0'\a\n\0\18\b\2\0B\3\5\0016\3\1\0009\3\2\0039\3\a\0039\3\b\3\18\5\1\0'\6\v\0'\a\f\0\18\b\2\0B\3\5\0016\3\1\0009\3\2\0039\3\a\0039\3\b\3\18\5\1\0'\6\r\0'\a\14\0\18\b\2\0B\3\5\0016\3\1\0009\3\2\0039\3\a\0039\3\b\3\18\5\1\0'\6\15\0'\a\16\0\18\b\2\0B\3\5\0016\3\1\0009\3\2\0039\3\a\0039\3\b\3\18\5\1\0'\6\17\0'\a\18\0\18\b\2\0B\3\5\1K\0\1\0<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<cr>\agi0<cmd>lua vim.lsp.diagnostic.goto_next()<cr>\a]d0<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>\a[d*<cmd>lua vim.lsp.buf.definition()<cr>\n<c-]>:<cmd>lua vim.lsp.buf.hover({ border = \"single\" })<cr>\6K\vnormal\bmap\27v:lua.vim.lsp.omnifunc\romnifunc\bset\bopt\bbuf\bapi\1\0\2\vsilent\2\fnoremap\2ˆ\3\1\0\6\0\29\00086\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1B\1\1\0023\2\5\0009\3\6\0019\3\a\0039\3\b\3+\4\2\0=\4\t\0039\3\6\0019\3\a\0039\3\b\0035\4\f\0005\5\v\0=\5\r\4=\4\n\0039\3\14\0009\3\15\0035\5\16\0=\1\17\5B\3\2\0019\3\18\0009\3\15\0035\5\19\0=\1\17\5=\2\20\5B\3\2\0019\3\21\0009\3\15\0035\5\22\0=\1\17\5=\2\20\5B\3\2\0019\3\23\0009\3\15\0035\5\24\0=\1\17\5=\2\20\5B\3\2\0019\3\25\0009\3\15\0035\5\26\0=\1\17\5=\2\20\5B\3\2\0019\3\27\0009\3\15\0035\5\28\0=\1\17\5=\2\20\5B\3\2\1K\0\1\0\1\0\0\17intelephense\1\0\0\nvuels\1\0\0\vjsonls\1\0\0\ncssls\14on_attach\1\0\0\thtml\17capabilities\1\0\0\nsetup\18rust_analyzer\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\19completionItem\15completion\17textDocument\0\22make_capabilities\blsp\bapi\14lspconfig\frequire\0" },
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n£\4\0\0\a\0\21\0\0256\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\6\0B\1\3\0019\1\a\0005\3\t\0005\4\b\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\18\0005\5\15\0005\6\16\0=\6\17\5=\5\19\4=\4\20\3B\1\2\1K\0\1\0\16textobjects\vselect\1\0\0\fkeymaps\1\0\f\aaC\17@class.outer\aac\23@conditional.outer\aib\17@block.inner\aif\20@function.inner\aal\16@loop.outer\aaf\20@function.outer\aia\20@paramter.inner\aic\23@conditional.inner\aaa\21@parameter.outer\aab\17@block.outer\ail\16@loop.inner\aiC\17@class.inner\1\0\2\14lookahead\2\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\26context_commentstring\1\0\0\1\0\1\venable\2\nsetup(:TSHighlightCapturesUnderCursor<cr>\n<f10>\vnormal\bmap\bapi\28nvim-treesitter.configs\frequire\0" },
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
    config = { "\27LJ\2\nf\0\0\4\0\6\0\r6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0B\0\3\0016\0\0\0009\0\1\0009\0\5\0'\2\3\0'\3\4\0B\0\3\1K\0\1\0\vvisual\22<plug>(EasyAlign)\aga\vnormal\bmap\bapi\0" },
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/vim-easy-align"
  },
  ["vim-eunuch"] = {
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/vim-eunuch"
  },
  ["vim-floaterm"] = {
    config = { "\27LJ\2\nÁ\2\0\0\4\0\14\1$6\0\0\0009\0\1\0'\2\2\0*\3\0\0B\0\3\0016\0\0\0009\0\1\0'\2\3\0*\3\0\0B\0\3\0016\0\0\0009\0\1\0'\2\4\0'\3\5\0B\0\3\0016\0\0\0009\0\1\0'\2\6\0'\3\a\0B\0\3\0016\0\0\0009\0\1\0'\2\b\0'\3\t\0B\0\3\0016\0\0\0009\0\1\0'\2\n\0'\3\v\0B\0\3\0016\0\0\0009\0\1\0'\2\f\0'\3\r\0B\0\3\1K\0\1\0\15<c-\\><c-]>\25floaterm_keymap_next\15<c-\\><c-[>\25floaterm_keymap_prev\14<c-\\><bs>\25floaterm_keymap_kill\14<c-\\><cr>\24floaterm_keymap_new\15<c-\\><c-\\>\27floaterm_keymap_toggle\19floaterm_width\20floaterm_height\bset\bapiµÊÃô\19ô≥¶ˇ\3\0" },
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
    config = { "\27LJ\2\nç\1\0\0\3\0\6\0\0176\0\0\0009\0\1\0009\0\2\0)\2\1\0B\0\2\2\15\0\0\0X\1\5Ä6\0\0\0009\0\3\0'\2\4\0D\0\2\0X\0\4Ä6\0\0\0009\0\3\0'\2\5\0D\0\2\0K\0\1\0\n<c-j>!<plug>(vsnip-expand-or-jump)\vescape\20vsnip#available\bvim\bapiË\1\0\1\4\0\b\2!\t\0\0\0X\1\fÄ6\1\0\0009\1\1\0019\1\2\1)\3\1\0B\1\2\2\15\0\1\0X\2\5Ä6\1\0\0009\1\3\1'\3\4\0D\1\2\0X\1\18Ä\t\0\1\0X\1\fÄ6\1\1\0009\1\5\0019\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä6\1\0\0009\1\3\1'\3\6\0D\1\2\0X\1\4Ä6\1\0\0009\1\3\1'\3\a\0D\1\2\0K\0\1\0\n<c-k>\28<plug>(vsnip-jump-prev)\afn\28<plug>(vsnip-jump-next)\vescape\19vsnip#jumpable\bvim\bapi\2˛ˇˇˇ\31\4\1\0\6\0#\0A6\0\0\0009\0\1\0'\2\2\0006\3\0\0009\3\3\0039\3\4\3'\5\5\0B\3\2\0A\0\1\0016\0\0\0009\0\1\0'\2\6\0005\3\b\0005\4\a\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3B\0\3\0013\0\14\0007\0\15\0003\0\16\0007\0\17\0006\0\0\0009\0\18\0009\0\19\0'\2\20\0'\3\21\0B\0\3\0016\0\0\0009\0\18\0009\0\19\0'\2\22\0'\3\23\0B\0\3\0016\0\0\0009\0\18\0009\0\24\0'\2\25\0'\3\26\0005\4\27\0B\0\4\0016\0\0\0009\0\18\0009\0\28\0'\2\25\0'\3\29\0005\4\30\0B\0\4\0016\0\0\0009\0\18\0009\0\24\0'\2\31\0'\3 \0005\4!\0B\0\4\0016\0\0\0009\0\18\0009\0\28\0'\2\31\0'\3 \0005\4\"\0B\0\4\1K\0\1\0\1\0\1\texpr\2\1\0\1\texpr\2\19v:lua.jump(-1)\n<c-k>\1\0\1\texpr\2\18v:lua.jump(1)\vselect\1\0\1\texpr\2\27v:lua.expand_or_jump()\n<c-j>\vinsert\27<plug>(vsnip-cut-text)\6S#<plug>(vsnip-select-text)<esc>\6Y\vvisual\bmap\tjump\0\19expand_or_jump\0\bphp\1\3\0\0\bphp\6c\bvue\1\5\0\0\thtml\bcss\15javascript\6c\15javascript\1\0\0\1\3\0\0\15javascript\6c\20vsnip_filetypes\28~/.config/nvim/snippets\vexpand\bvim\22vsnip_snippet_dir\bset\bapi\0" },
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  vimwiki = {
    config = { "\27LJ\2\n˝\3\0\0\5\0\n\0\0186\0\0\0009\0\1\0'\2\2\0004\3\3\0005\4\3\0>\4\1\3B\0\3\0016\0\0\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0B\0\3\0016\0\0\0009\0\b\0'\2\t\0B\0\2\1K\0\1\0—\2        augroup Vimwiki\n            autocmd FileType vimwiki nmap <c-]> <plug>VimwikiFollowLink\n            autocmd FileType vimwiki nmap <c-t> <plug>VimwikiGoBackLink\n            autocmd FileType vimwiki nmap <c-n> <plug>VimwikiNextLink\n            autocmd FileType vimwiki nmap <c-p> <plug>VimwikiPrevLink\n        augroup end\n    \bcmd\22:VimwikiIndex<cr>\6+\vnormal\bmap\1\0\2\tpath\19~/Dropbox/Wiki\vsyntax\rmarkdown\18vimiwiki_list\bset\bapi\0" },
    loaded = true,
    path = "/home/liam/.local/share/nvim/site/pack/packer/start/vimwiki"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n´\4\0\2\t\0\19\00065\2\0\0006\3\1\0009\3\2\0039\3\3\0039\3\4\3'\5\5\0'\6\6\0B\3\3\0016\3\1\0009\3\2\0039\3\a\0039\3\b\3\18\5\1\0'\6\t\0'\a\n\0\18\b\2\0B\3\5\0016\3\1\0009\3\2\0039\3\a\0039\3\b\3\18\5\1\0'\6\v\0'\a\f\0\18\b\2\0B\3\5\0016\3\1\0009\3\2\0039\3\a\0039\3\b\3\18\5\1\0'\6\r\0'\a\14\0\18\b\2\0B\3\5\0016\3\1\0009\3\2\0039\3\a\0039\3\b\3\18\5\1\0'\6\15\0'\a\16\0\18\b\2\0B\3\5\0016\3\1\0009\3\2\0039\3\a\0039\3\b\3\18\5\1\0'\6\17\0'\a\18\0\18\b\2\0B\3\5\1K\0\1\0<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<cr>\agi0<cmd>lua vim.lsp.diagnostic.goto_next()<cr>\a]d0<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>\a[d*<cmd>lua vim.lsp.buf.definition()<cr>\n<c-]>:<cmd>lua vim.lsp.buf.hover({ border = \"single\" })<cr>\6K\vnormal\bmap\27v:lua.vim.lsp.omnifunc\romnifunc\bset\bopt\bbuf\bapi\1\0\2\vsilent\2\fnoremap\2ˆ\3\1\0\6\0\29\00086\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1B\1\1\0023\2\5\0009\3\6\0019\3\a\0039\3\b\3+\4\2\0=\4\t\0039\3\6\0019\3\a\0039\3\b\0035\4\f\0005\5\v\0=\5\r\4=\4\n\0039\3\14\0009\3\15\0035\5\16\0=\1\17\5B\3\2\0019\3\18\0009\3\15\0035\5\19\0=\1\17\5=\2\20\5B\3\2\0019\3\21\0009\3\15\0035\5\22\0=\1\17\5=\2\20\5B\3\2\0019\3\23\0009\3\15\0035\5\24\0=\1\17\5=\2\20\5B\3\2\0019\3\25\0009\3\15\0035\5\26\0=\1\17\5=\2\20\5B\3\2\0019\3\27\0009\3\15\0035\5\28\0=\1\17\5=\2\20\5B\3\2\1K\0\1\0\1\0\0\17intelephense\1\0\0\nvuels\1\0\0\vjsonls\1\0\0\ncssls\14on_attach\1\0\0\thtml\17capabilities\1\0\0\nsetup\18rust_analyzer\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\19completionItem\15completion\17textDocument\0\22make_capabilities\blsp\bapi\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nnn.vim
time([[Config for nnn.vim]], true)
try_loadstring("\27LJ\2\nå\3\0\0\6\0\19\0\0276\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\4\0=\4\5\0035\4\a\0005\5\6\0=\5\b\4=\4\t\3B\1\2\0016\1\n\0009\1\v\0019\1\f\1'\3\r\0'\4\14\0005\5\15\0B\1\4\0016\1\n\0009\1\v\0019\1\f\1'\3\16\0'\4\17\0005\5\18\0B\1\4\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\19:NnnPicker<cr>\t<cr>\1\0\2\vsilent\2\fnoremap\2\25:NnnPicker %:p:h<cr>\6-\vnormal\bmap\bapi\vlayout\vwindow\1\0\0\1\0\3\vheight\4ö≥ÊÃ\tô≥¶ˇ\3\nwidth\4ö≥ÊÃ\tô≥¶ˇ\3\vborder\nsharp\vaction\1\0\3\n<c-v>\vvsplit\n<c-s>\nsplit\n<c-t>\btab\1\0\3\fcommand\6n\18replace_netrw\3\1\25set_default_mappings\3\0\nsetup\bnnn\frequire\0", "config", "nnn.vim")
time([[Config for nnn.vim]], false)
-- Config for: fzf.vim
time([[Config for fzf.vim]], true)
try_loadstring("\27LJ\2\nÿ\a\0\0\a\0(\0^6\0\0\0009\0\1\0'\2\2\0006\3\3\0009\3\4\0035\5\5\0'\6\6\0B\3\3\0A\0\1\0016\0\0\0009\0\1\0'\2\a\0005\3\b\0B\0\3\0016\0\0\0009\0\1\0'\2\t\0005\3\v\0005\4\n\0=\4\f\3B\0\3\0016\0\0\0009\0\r\0009\0\14\0'\2\15\0'\3\16\0B\0\3\0016\0\0\0009\0\r\0009\0\14\0'\2\17\0'\3\18\0B\0\3\0016\0\0\0009\0\r\0009\0\14\0'\2\19\0'\3\20\0B\0\3\0016\0\0\0009\0\r\0009\0\14\0'\2\21\0'\3\22\0B\0\3\0016\0\0\0009\0\r\0009\0\23\0'\2\24\0'\3\25\0B\0\3\0016\0\0\0009\0\r\0009\0\23\0'\2\26\0'\3\27\0B\0\3\0016\0\0\0009\0\r\0009\0\23\0'\2\28\0'\3\29\0B\0\3\0016\0\0\0009\0\r\0009\0\23\0'\2\30\0'\3\31\0B\0\3\0016\0\0\0009\0\r\0009\0\23\0'\2 \0'\3!\0B\0\3\0016\0\0\0009\0\r\0009\0\23\0'\2\"\0'\3#\0B\0\3\0016\0\0\0009\0\r\0009\0\23\0'\2$\0'\3%\0B\0\3\0016\0\0\0009\0\r\0009\0\23\0'\2&\0'\3'\0B\0\3\1K\0\1\0\15:Lines<cr>\r<space>l\18:Commits!<cr>\r<space>g\18:Helptags<cr>\r<space>?\18:History:<cr>\r<space>:\15:Files<cr>\16<space><cr>\17:Buffers<cr>\16<space><bs>\18:Snippets<cr>\17<space><tab>\f:Rg<cr>\19<space><space>\vnormal\30<plug>(fzf-complete-line)\15<c-x><c-l>\30<plug>(fzf-complete-path)\15<c-x><c-p>\30<plug>(fzf-complete-file)\15<c-x><c-j>\30<plug>(fzf-complete-word)\15<c-x><c-k>\vinsert\bmap\vwindow\1\0\0\1\0\3\vheight\4ö≥ÊÃ\tô≥¶ˇ\3\nwidth\4ö≥ÊÃ\tô≥¶ˇ\3\vborder\nsharp\15fzf_layout\1\0\2\vctrl-t\14tab split\vctrl-s\nsplit\15fzf_action\6 \1\4\0\0\f--graph\19--color=always>--format=\"%C(red)%h %C(white)%s %C(green)%cr %C(blue)%an\"\vconcat\ntable\28fzf_commits_log_options\bset\bapi\0", "config", "fzf.vim")
time([[Config for fzf.vim]], false)
-- Config for: nvim-compe
time([[Config for nvim-compe]], true)
try_loadstring("\27LJ\2\nµ\1\0\0\3\0\b\1\0266\0\0\0009\0\1\0009\0\2\0B\0\1\2\t\0\0\0X\0\5Ä6\0\0\0009\0\3\0'\2\4\0D\0\2\0X\0\14Ä6\0\0\0009\0\5\0B\0\1\2\15\0\0\0X\1\5Ä6\0\0\0009\0\3\0'\2\6\0D\0\2\0X\0\4Ä6\0\0\0009\0\1\0009\0\a\0D\0\1\0K\0\1\0\19compe#complete\n<tab>\20check_backspace\n<c-n>\vescape\15pumvisible\bvim\bapi\2p\0\0\3\0\6\1\0166\0\0\0009\0\1\0009\0\2\0B\0\1\2\t\0\0\0X\0\5Ä6\0\0\0009\0\3\0'\2\4\0D\0\2\0X\0\4Ä6\0\0\0009\0\3\0'\2\5\0D\0\2\0K\0\1\0\f<s-tab>\n<c-p>\vescape\15pumvisible\bvim\bapi\2’\3\1\0\6\0\25\00006\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\3B\1\2\0013\1\6\0007\1\a\0003\1\b\0007\1\t\0006\1\n\0009\1\v\0019\1\f\1'\3\r\0'\4\14\0005\5\15\0B\1\4\0016\1\n\0009\1\v\0019\1\f\1'\3\16\0'\4\17\0005\5\18\0B\1\4\0016\1\n\0009\1\v\0019\1\19\1'\3\16\0'\4\17\0005\5\20\0B\1\4\0016\1\n\0009\1\v\0019\1\f\1'\3\21\0'\4\22\0005\5\23\0B\1\4\0016\1\n\0009\1\v\0019\1\19\1'\3\21\0'\4\22\0005\5\24\0B\1\4\1K\0\1\0\1\0\1\texpr\2\1\0\1\texpr\2\27v:lua.s_tab_complete()\f<s-tab>\1\0\1\texpr\2\vselect\1\0\1\texpr\2\25v:lua.tab_complete()\n<tab>\1\0\2\vsilent\2\texpr\2\26compe#confirm('<cr>')\t<cr>\vinsert\bmap\bapi\19s_tab_complete\0\17tab_complete\0\vsource\1\0\0\1\0\6\rnvim_lua\2\vbuffer\2\nvsnip\2\tpath\2\rnvim_lsp\2\tcalc\2\nsetup\ncompe\frequire\0", "config", "nvim-compe")
time([[Config for nvim-compe]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n£\4\0\0\a\0\21\0\0256\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\6\0B\1\3\0019\1\a\0005\3\t\0005\4\b\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\18\0005\5\15\0005\6\16\0=\6\17\5=\5\19\4=\4\20\3B\1\2\1K\0\1\0\16textobjects\vselect\1\0\0\fkeymaps\1\0\f\aaC\17@class.outer\aac\23@conditional.outer\aib\17@block.inner\aif\20@function.inner\aal\16@loop.outer\aaf\20@function.outer\aia\20@paramter.inner\aic\23@conditional.inner\aaa\21@parameter.outer\aab\17@block.outer\ail\16@loop.inner\aiC\17@class.inner\1\0\2\14lookahead\2\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\26context_commentstring\1\0\0\1\0\1\venable\2\nsetup(:TSHighlightCapturesUnderCursor<cr>\n<f10>\vnormal\bmap\bapi\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: vim-floaterm
time([[Config for vim-floaterm]], true)
try_loadstring("\27LJ\2\nÁ\2\0\0\4\0\14\1$6\0\0\0009\0\1\0'\2\2\0*\3\0\0B\0\3\0016\0\0\0009\0\1\0'\2\3\0*\3\0\0B\0\3\0016\0\0\0009\0\1\0'\2\4\0'\3\5\0B\0\3\0016\0\0\0009\0\1\0'\2\6\0'\3\a\0B\0\3\0016\0\0\0009\0\1\0'\2\b\0'\3\t\0B\0\3\0016\0\0\0009\0\1\0'\2\n\0'\3\v\0B\0\3\0016\0\0\0009\0\1\0'\2\f\0'\3\r\0B\0\3\1K\0\1\0\15<c-\\><c-]>\25floaterm_keymap_next\15<c-\\><c-[>\25floaterm_keymap_prev\14<c-\\><bs>\25floaterm_keymap_kill\14<c-\\><cr>\24floaterm_keymap_new\15<c-\\><c-\\>\27floaterm_keymap_toggle\19floaterm_width\20floaterm_height\bset\bapiµÊÃô\19ô≥¶ˇ\3\0", "config", "vim-floaterm")
time([[Config for vim-floaterm]], false)
-- Config for: goyo.vim
time([[Config for goyo.vim]], true)
try_loadstring("\27LJ\2\n•\2\0\0\4\0\n\0\0166\0\0\0009\0\1\0'\2\2\0'\3\3\0B\0\3\0016\0\0\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0B\0\3\0016\0\0\0009\0\b\0'\2\t\0B\0\2\1K\0\1\0¢\1        augroup Goyo\n            autocmd User GoyoEnter Limelight\n            autocmd User GoyoLeave Limelight! | colorscheme custom\n        augroup end\n    \bcmd\14:Goyo<cr>\6\\\vnormal\bmap\0068\30limelight_conceal_ctermfg\bset\bapi\0", "config", "goyo.vim")
time([[Config for goyo.vim]], false)
-- Config for: vimwiki
time([[Config for vimwiki]], true)
try_loadstring("\27LJ\2\n˝\3\0\0\5\0\n\0\0186\0\0\0009\0\1\0'\2\2\0004\3\3\0005\4\3\0>\4\1\3B\0\3\0016\0\0\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0B\0\3\0016\0\0\0009\0\b\0'\2\t\0B\0\2\1K\0\1\0—\2        augroup Vimwiki\n            autocmd FileType vimwiki nmap <c-]> <plug>VimwikiFollowLink\n            autocmd FileType vimwiki nmap <c-t> <plug>VimwikiGoBackLink\n            autocmd FileType vimwiki nmap <c-n> <plug>VimwikiNextLink\n            autocmd FileType vimwiki nmap <c-p> <plug>VimwikiPrevLink\n        augroup end\n    \bcmd\22:VimwikiIndex<cr>\6+\vnormal\bmap\1\0\2\tpath\19~/Dropbox/Wiki\vsyntax\rmarkdown\18vimiwiki_list\bset\bapi\0", "config", "vimwiki")
time([[Config for vimwiki]], false)
-- Config for: vim-vsnip
time([[Config for vim-vsnip]], true)
try_loadstring("\27LJ\2\nç\1\0\0\3\0\6\0\0176\0\0\0009\0\1\0009\0\2\0)\2\1\0B\0\2\2\15\0\0\0X\1\5Ä6\0\0\0009\0\3\0'\2\4\0D\0\2\0X\0\4Ä6\0\0\0009\0\3\0'\2\5\0D\0\2\0K\0\1\0\n<c-j>!<plug>(vsnip-expand-or-jump)\vescape\20vsnip#available\bvim\bapiË\1\0\1\4\0\b\2!\t\0\0\0X\1\fÄ6\1\0\0009\1\1\0019\1\2\1)\3\1\0B\1\2\2\15\0\1\0X\2\5Ä6\1\0\0009\1\3\1'\3\4\0D\1\2\0X\1\18Ä\t\0\1\0X\1\fÄ6\1\1\0009\1\5\0019\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä6\1\0\0009\1\3\1'\3\6\0D\1\2\0X\1\4Ä6\1\0\0009\1\3\1'\3\a\0D\1\2\0K\0\1\0\n<c-k>\28<plug>(vsnip-jump-prev)\afn\28<plug>(vsnip-jump-next)\vescape\19vsnip#jumpable\bvim\bapi\2˛ˇˇˇ\31\4\1\0\6\0#\0A6\0\0\0009\0\1\0'\2\2\0006\3\0\0009\3\3\0039\3\4\3'\5\5\0B\3\2\0A\0\1\0016\0\0\0009\0\1\0'\2\6\0005\3\b\0005\4\a\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3B\0\3\0013\0\14\0007\0\15\0003\0\16\0007\0\17\0006\0\0\0009\0\18\0009\0\19\0'\2\20\0'\3\21\0B\0\3\0016\0\0\0009\0\18\0009\0\19\0'\2\22\0'\3\23\0B\0\3\0016\0\0\0009\0\18\0009\0\24\0'\2\25\0'\3\26\0005\4\27\0B\0\4\0016\0\0\0009\0\18\0009\0\28\0'\2\25\0'\3\29\0005\4\30\0B\0\4\0016\0\0\0009\0\18\0009\0\24\0'\2\31\0'\3 \0005\4!\0B\0\4\0016\0\0\0009\0\18\0009\0\28\0'\2\31\0'\3 \0005\4\"\0B\0\4\1K\0\1\0\1\0\1\texpr\2\1\0\1\texpr\2\19v:lua.jump(-1)\n<c-k>\1\0\1\texpr\2\18v:lua.jump(1)\vselect\1\0\1\texpr\2\27v:lua.expand_or_jump()\n<c-j>\vinsert\27<plug>(vsnip-cut-text)\6S#<plug>(vsnip-select-text)<esc>\6Y\vvisual\bmap\tjump\0\19expand_or_jump\0\bphp\1\3\0\0\bphp\6c\bvue\1\5\0\0\thtml\bcss\15javascript\6c\15javascript\1\0\0\1\3\0\0\15javascript\6c\20vsnip_filetypes\28~/.config/nvim/snippets\vexpand\bvim\22vsnip_snippet_dir\bset\bapi\0", "config", "vim-vsnip")
time([[Config for vim-vsnip]], false)
-- Config for: vim-easy-align
time([[Config for vim-easy-align]], true)
try_loadstring("\27LJ\2\nf\0\0\4\0\6\0\r6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0B\0\3\0016\0\0\0009\0\1\0009\0\5\0'\2\3\0'\3\4\0B\0\3\1K\0\1\0\vvisual\22<plug>(EasyAlign)\aga\vnormal\bmap\bapi\0", "config", "vim-easy-align")
time([[Config for vim-easy-align]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
