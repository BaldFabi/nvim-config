return {
        "RRethy/vim-illuminate",
        after = "nvim-treesitter",
        config = function()
                require("illuminate").configure({
                        delay = 0
                })
        end
}
