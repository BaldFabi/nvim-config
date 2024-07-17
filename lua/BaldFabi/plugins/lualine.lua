return {
        "nvim-lualine/lualine.nvim",
        dependencies = {
                "nvim-tree/nvim-web-devicons"
        },
        config = function()
                require("lualine").setup {
                        options = {
                                theme = "auto",
                                component_separators = "|",
                                section_separators = "",
                                path = 1
                        }
                }
        end
}
