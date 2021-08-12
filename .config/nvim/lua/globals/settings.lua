local api = require('api')

api.global.loaded_netrw = 0

api.option.backup = false
api.option.completeopt = { 'menuone', 'noselect' }
api.option.dictionary = '/usr/share/dict/words'
api.option.expandtab = true
api.option.fillchars = { vert = ' ' }
api.option.hidden = true
api.option.hlsearch = false
api.option.ignorecase = true
api.option.joinspaces = false
api.option.list = true
api.option.laststatus = 2
api.option.listchars = { trail = '·', tab = '│ ' }
api.option.mouse = 'n'
api.option.number = true
api.option.relativenumber = true
api.option.shiftwidth = 4
api.option.shortmess = api.option.shortmess + { c = true }
api.option.showmode = false
api.option.signcolumn = 'yes:1'
api.option.smartcase = true
api.option.smartindent = true
api.option.splitbelow = true
api.option.splitright = true
api.option.swapfile = false
api.option.tabstop = 4
api.option.tags = '.git/tags'
api.option.undofile = true
api.option.wildignorecase = true
api.option.wrap = false
api.option.writebackup = false
