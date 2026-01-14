return {
    "nvim-treesitter/nvim-treesitter",

    branch = "master",
    build = ":TSUpdate",
    config = function()
        --require 'nvim-treesitter'.install {
        --'bash',
        --'css',
        --'dockerfile',
        --'go',
        --'gomod',
        --'graphql',
        --'html',
        --'javascript',
        --'jsdoc',
        --'json',
        --'lua',
        --'python',
        --'tsx',
        --'typescript',
        --'yaml',
        --'cmake',
        --'css',
        --'hcl',
        --'http',
        --'make',
        --'markdown',
        --'regex',
        --'rust',
        --'ruby',
        --'scss',
        --'sql',
        --'toml',
        --'vim'
        --}
        require 'nvim-treesitter.configs'.setup {
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
                'vim'
            },

            -- Install parsers synchronously (only applied to `ensure_installed`)
            sync_install = false,

            -- Automatically install missing parsers when entering buffer
            -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
            auto_install = true,

            ignore_install = {},

            highlight = {
                enable = true,

                -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
                -- Using this option may slow down your editor, and you may see some duplicate highlights.
                -- Instead of true it can also be a list of languages
                additional_vim_regex_highlighting = false,
            },
        }
    end
}
