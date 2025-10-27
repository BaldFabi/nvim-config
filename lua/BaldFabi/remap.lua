vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { noremap = false })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { noremap = false })

vim.keymap.set('n', '<leader>se', '<CMD>wincmd =<CR>', { noremap = false })
vim.keymap.set('n', '+', '<CMD>vertical resize +10<CR>', { noremap = false })
vim.keymap.set('n', '-', '<CMD>vertical resize -10<CR>', { noremap = false })

vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>", { noremap = false })
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>", { noremap = false })

vim.keymap.set('i', 'jk', '<ESC>', { noremap = false })

vim.keymap.set('n', 'Ö', '[m', { noremap = false })
vim.keymap.set('n', 'ö', ']m', { noremap = false })

vim.keymap.set('n', '<C-n>', '<CMD>bnext<CR>', { noremap = false })
vim.keymap.set('n', '<C-p>', '<CMD>bprevious<CR>', { noremap = false })
vim.keymap.set('n', '<leader>bx', '<CMD>bd<CR>', { noremap = false })

vim.keymap.set('n', '<leader>rr', '<CMD>LspRestart<CR>', { noremap = false })
vim.keymap.set("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { noremap = false })
