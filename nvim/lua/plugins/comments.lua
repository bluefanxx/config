return {
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
	},
	{
		"numToStr/Comment.nvim",
		opts = {},
		config = function()
			require("Comment").setup()
		end,
	},
}
