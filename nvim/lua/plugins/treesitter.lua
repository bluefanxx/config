return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"lua",
				"javascript",
				"html",
				"css",
				"eex",
				"elixir",
				"erlang",
				"heex",
				"surface",
			},
			sync_install = { false },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
