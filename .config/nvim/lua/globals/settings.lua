local global = require('api.global')
local option = require('api.option')

global.loaded_netrw = 0

option.backup = false
option.completeopt = { 'menuone', 'noselect' }
option.dictionary = '/usr/share/dict/words'
option.expandtab = true
option.fillchars = { vert = ' ' }
option.hidden = true
option.hlsearch = false
option.ignorecase = true
option.joinspaces = false
option.list = true
option.laststatus = 2
option.listchars = { trail = '·', tab = '│ ' }
option.mouse = 'n'
option.number = true
option.relativenumber = true
option.shiftwidth = 4
option.shortmess = option.shortmess + { c = true }
option.showmode = false
option.signcolumn = 'yes:1'
option.smartcase = true
option.smartindent = true
option.splitbelow = true
option.splitright = true
option.swapfile = false
option.tabstop = 4
option.tags = '.git/tags'
option.undofile = true
option.wildignorecase = true
option.wrap = false
option.writebackup = false
