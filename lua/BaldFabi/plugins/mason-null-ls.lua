return {
	"jay-babu/mason-null-ls.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"mason-org/mason.nvim",
		"nvimtools/none-ls.nvim",
	},
	config = function()
		require("mason-null-ls").setup({
			ensure_installed = { "goimports", "prettier", "tree-sitter-cli" },
		})
	end,
}
