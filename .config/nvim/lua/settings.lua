vim.g.mapleader = ' '

vim.opt.backup = false
vim.opt.completeopt = { 'menuone', 'noselect' }
vim.opt.dictionary = '/usr/share/dict/words'
vim.opt.expandtab = true
vim.opt.fillchars = { vert = ' ' }
vim.opt.hidden = true
vim.opt.ignorecase = true
vim.opt.laststatus = 0
vim.opt.list = true
vim.opt.listchars = { trail = '·', tab = '│ ' }
vim.opt.mouse = 'n'
vim.opt.wrap = false
vim.opt.hlsearch = false
vim.opt.joinspaces = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.shortmess = vim.opt.shortmess + { c = true }
vim.opt.showmode = false
vim.opt.showtabline = 0
vim.opt.signcolumn = 'yes:1'
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.swapfile = false
vim.opt.tabstop = 4
vim.opt.tags = '.git/tags'
vim.opt.undofile = true
vim.opt.wildignorecase = true
vim.opt.writebackup = false
