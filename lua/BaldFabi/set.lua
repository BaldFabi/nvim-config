vim.o.cursorline = true
vim.o.tabstop = 4
vim.o.expandtab = true

vim.o.wrap = false

vim.o.scrolloff = 10

vim.o.hlsearch = true

vim.wo.number = true
vim.o.relativenumber = true

vim.o.mouse = 'a'

vim.o.breakindent = true

vim.o.undofile = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

vim.o.termguicolors = true
--vim.cmd [[colorscheme dracula]]

vim.o.colorcolumn = '80'

-- Autoformat before writing the file
--vim.api.nvim_command(
--┊ 'autocmd BufWritePre *.go,*.tf,*.js,*.tsx,*.ts,*.md,*.css,*.scss,*.sass,*.yaml,*.yml,*.json,*.html,*.lua,*.templ :Format')

vim.o.completeopt = 'menuone,noselect'
