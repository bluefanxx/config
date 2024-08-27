return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = {
		formatters_by_ft = {
			lua = { "stylua" },
		},
		format_after_save = {
			lsp_fallback = true,
			async = true,
			timeout_ms = 1000,
		},
	},
}
