return {
        "folke/zen-mode.nvim",
        opts = {
                width = 100,
                plugins = {
                        tmux = { enabled = false }
                }
        },
        config = function()
                vim.keymap.set("n", "<leader>zz", "<CMD>ZenMode<CR>", { noremap = false })
        end
}
