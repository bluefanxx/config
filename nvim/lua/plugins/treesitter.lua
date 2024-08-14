return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = { "lua", "javascript", "html", "css", "markdown", "markdown_inline", "go" },
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
