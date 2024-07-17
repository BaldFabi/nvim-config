vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

vim.keymap.set('n', '<leader>s#', '<CMD>vsplit<CR>', { noremap = false })
vim.keymap.set('n', '<leader>s-', '<CMD>split<CR>', { noremap = false })
vim.keymap.set('n', '<leader>sx', '<CMD>close<CR>', { noremap = false })
vim.keymap.set('n', '<leader>se', '<CMD>wincmd =<CR>', { noremap = false })
vim.keymap.set('n', '+', '<CMD>vertical resize +10<CR>', { noremap = false })
vim.keymap.set('n', '-', '<CMD>vertical resize -10<CR>', { noremap = false })

vim.keymap.set('i', 'jk', '<ESC>', { noremap = false })

vim.keymap.set('n', 'ö', ']m', { noremap = false })
vim.keymap.set('n', 'Ö', '[m', { noremap = false })

vim.keymap.set('n', '<C-n>', '<CMD>bnext<CR>', { noremap = false })
vim.keymap.set('n', '<C-p>', '<CMD>bprevious<CR>', { noremap = false })
vim.keymap.set('n', '<leader>bx', '<CMD>bd<CR>', { noremap = false })

vim.keymap.set('n', '<leader>rr', '<CMD>LspRestart<CR>', { noremap = false })
