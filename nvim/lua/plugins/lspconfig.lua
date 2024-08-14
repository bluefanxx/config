return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		local lspconfig = require("lspconfig")

		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		-- lua
		lspconfig.lua_ls.setup({
			capabilities = capabilities,
		})

		-- bash
		lspconfig.bashls.setup({
			capabilities = capabilities,
		})
	end,
}
