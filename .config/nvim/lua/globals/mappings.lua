vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true })
vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true })
vim.api.nvim_set_keymap('n', 'c*', '*``cgn', { noremap = true })
vim.api.nvim_set_keymap('n', 'c#', '#``cgN', { noremap = true })
vim.api.nvim_set_keymap('n', 'd*', '*``dgn', { noremap = true })
vim.api.nvim_set_keymap('n', 'd#', '#``dgN', { noremap = true })
vim.api.nvim_set_keymap('n', 'gQ', 'm`ggq``', { noremap = true })
vim.api.nvim_set_keymap('n', 'g=', 'm`gg=G``', { noremap = true })
vim.api.nvim_set_keymap('n', '<bs>', '<c-^>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<f5>', '<cmd>luafile $XDG_CONFIG_HOME/nvim/init.lua<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<f8>', '<cmd>source $VIMRUNTIME/syntax/hitest.vim<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<c-s>', '<cmd>write<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<c-h>', '<c-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<c-j>', '<c-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<c-k>', '<c-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<c-l>', '<c-w>l', { noremap = true })
vim.api.nvim_set_keymap('n', '<c-n>', 'gt', { noremap = true })
vim.api.nvim_set_keymap('n', '<c-p>', 'gT', { noremap = true })
vim.api.nvim_set_keymap('n', '<c-w>h', '<c-w><', { noremap = true })
vim.api.nvim_set_keymap('n', '<c-w>j', '<c-w>+', { noremap = true })
vim.api.nvim_set_keymap('n', '<c-w>k', '<c-w>-', { noremap = true })
vim.api.nvim_set_keymap('n', '<c-w>l', '<c-w>>', { noremap = true })
vim.api.nvim_set_keymap('n', '<c-w>e', '<cmd>edit<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<c-w>t', '<cmd>tabedit<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<c-w>Q', '<cmd>quit!<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<c-w>C', '<cmd>close!<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<c-w>d', '<cmd>bwipe<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<c-w>D', '<cmd>bwipe!<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<c-w>p', '":tabmove -" . v:count1 . "<cr>"', { expr = true, noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<c-w>n', '":tabmove +" . v:count1 . "<cr>"', { expr = true, noremap = true, silent = true })
