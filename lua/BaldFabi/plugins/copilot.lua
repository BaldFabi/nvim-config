return {
        "github/copilot.vim",
        config = function()
                vim.keymap.set("i", "<C-l>", "copilot#Accept('')", {
                        expr = true,
                        replace_keycodes = false,
                        noremap = true
                })
                vim.g.copilot_no_tab_map = true
        end
}
