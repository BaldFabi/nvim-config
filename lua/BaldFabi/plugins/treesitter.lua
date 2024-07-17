return {
        "nvim-treesitter/nvim-treesitter",
        run = function()
                pcall(require("nvim-treesitter.install").update {
                        with_sync = true
                })

                require("nvim-treesitter.configs").setup {
                        ignore_install = { "help" },
                        -- Add languages to be installed here that you want installed for treesitter
                        ensure_installed = {
                                'bash',
                                'css',
                                'dockerfile',
                                'go',
                                'gomod',
                                'graphql',
                                'html',
                                'javascript',
                                'jsdoc',
                                'json',
                                'lua',
                                'python',
                                'tsx',
                                'typescript',
                                'yaml',
                                'cmake',
                                'css',
                                'hcl',
                                'http',
                                'make',
                                'markdown',
                                'regex',
                                'rust',
                                'ruby',
                                'scss',
                                'sql',
                                'toml',
                                'help',
                                'vim'
                        },

                        highlight = { enable = true },
                        additional_vim_regex_highlighting = false,
                        indent = { enable = true, disable = { 'python' } },
                        incremental_selection = {
                                enable = true,
                                keymaps = {
                                        init_selection = '<c-space>',
                                        node_incremental = '<c-space>',
                                        scope_incremental = '<c-s>',
                                        node_decremental = '<c-backspace>',
                                },
                        },
                        textobjects = {
                                select = {
                                        enable = true,
                                        lookahead = true,
                                        keymaps = {
                                                -- You can use the capture groups defined in textobjects.scm
                                                ['aa'] = '@parameter.outer',
                                                ['ia'] = '@parameter.inner',
                                                ['af'] = '@function.outer',
                                                ['if'] = '@function.inner',
                                                ['ac'] = '@class.outer',
                                                ['ic'] = '@class.inner',
                                        },
                                },
                                move = {
                                        enable = true,
                                        set_jumps = true, -- whether to set jumps in the jumplist
                                        goto_next_start = {
                                                ['>m'] = '@function.outer',
                                                ['>>'] = '@class.outer',
                                        },
                                        goto_next_end = {
                                                ['>M'] = '@function.outer',
                                                ['><'] = '@class.outer',
                                        },
                                        goto_previous_start = {
                                                ['<m'] = '@function.outer',
                                                ['<<'] = '@class.outer',
                                        },
                                        goto_previous_end = {
                                                ['<M'] = '@function.outer',
                                                ['<>'] = '@class.outer',
                                        },
                                },
                                swap = {
                                        enable = true,
                                        swap_next = {
                                                ['<leader>a'] = '@parameter.inner',
                                        },
                                        swap_previous = {
                                                ['<leader>A'] = '@parameter.inner',
                                        },
                                },
                        },
                }
        end
}
