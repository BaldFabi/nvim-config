return {
        "akinsho/bufferline.nvim",
        dependencies = {
                "nvim-tree/nvim-web-devicons"
        },
        config = function()
                require("bufferline").setup {
                        options = {
                                numbers = "ordinal",
                                diagnostics = 'nvim_lsp',
                                offsets = {
                                        {
                                                filetype = "NvimTree",
                                                text = "File Explorer",
                                                text_align = "center",
                                                seperator = true
                                        }
                                }
                        }
                }

                for i = 1, 9 do
                        vim.keymap.set('n', '<leader>g' .. i, '<CMD>BufferLineGoToBuffer ' .. i .. '<CR>',
                                { noremap = false })
                end
        end
}
