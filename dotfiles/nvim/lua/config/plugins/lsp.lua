-- General LSP Remaps

vim.keymap.set("n", "<leader>ch", function() vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled()) end)


return {
	-- LSP manager 
	{
		"williamboman/mason.nvim",
		config = function()
			local configs = require("mason")

			configs.setup({
				ui = {
					icons = {
						package_installed = "Installed",
						package_pending = "Pending",
						package_uninstalled = "Uninstalled",
					}
				}
			})

		end,
	},

	-- LSP manager for nvim
	{

		"williamboman/mason-lspconfig.nvim",
		config = function()
			local configs = require("mason-lspconfig")
		end,
	},

	-- LSP Config for nvim
	{
		"neovim/nvim-lspconfig"
	},
}
