return {
    "nvim-treesitter/nvim-treesitter",

    --branch = "master",
    build = ":TSUpdate",
    config = function()
        require 'nvim-treesitter'.install {
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
        }
    end
}
