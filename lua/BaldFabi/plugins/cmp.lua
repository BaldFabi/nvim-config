return {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        dependencies = {
                "hrsh7th/cmp-nvim-lsp",
                "hrsh7th/cmp-buffer",
                "hrsh7th/cmp-path",
                "L3MON4D3/LuaSnip",
                "saadparwaiz1/cmp_luasnip"
        },
        config = function()
                local cmp = require("cmp")
                local luasnip = require("luasnip")

                cmp.setup {
                        snippet = {
                                expand = function(args)
                                        luasnip.lsp_expand(args.body)
                                end,
                        },
                        mapping = cmp.mapping.preset.insert {
                                ['<C-d>'] = cmp.mapping.scroll_docs(-4),
                                ['<C-f>'] = cmp.mapping.scroll_docs(4),
                                ['<C-Space>'] = cmp.mapping.complete(),
                                ['<CR>'] = cmp.mapping.confirm {
                                        behavior = cmp.ConfirmBehavior.Replace,
                                        select = true,
                                },
                                ["<S-Tab>"] = cmp.mapping.select_prev_item(),
                                ["<Tab>"] = cmp.mapping.select_next_item(),
                        },
                        sources = {
                                { name = 'nvim_lsp' },
                                { name = 'luasnip' },
                                { name = "buffer" },
                                { name = "path" }
                        }
                }
        end
}
