--Set completeopt to have a better completion experience
-- :help completeopt
-- menuone: popup even when there's only one match
-- noinsert: Do not insert text until a selection is made
-- noselect: Do not select, force to select one from the menu
-- shortness: avoid showing extra messages when using completion
-- updatetime: set updatetime for CursorHold
vim.opt.completeopt = {'menuone', 'noselect', 'noinsert'}
vim.opt.shortmess = vim.opt.shortmess + { c = true}
vim.api.nvim_set_option('updatetime', 300) 

-- Fixed column for diagnostics to appear
-- Show autodiagnostic popup on cursor hover_range
-- Goto previous / next diagnostic warning / error 
-- Show inlay_hints more frequently 
vim.cmd([[
set signcolumn=yes
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])


return {
	-- Autocompletion utilities and sources
	{
		"hrsh7th/nvim-cmp",
		config = function()
			local cmp = require("cmp")

			cmp.setup({
				snippet = {
					expand = function(args)
						vim.fn["vsnip#anonymous"](args.body)
					end,
				},
				mapping = {
					['<C-k>'] = cmp.mapping.select_prev_item(),
					['<C-j>'] = cmp.mapping.select_next_item(),
					['<CR>'] = cmp.mapping.confirm({ select = true })
				},
				sources = {
					{ name = "path" },
					{ name = "nvim_lsp_signature_help" },
					{ name = "calc" },
					{ name = "nvim_lsp" },
					{ name = "nvim_lua" },
					{ name = "buffer" },
					{ name = "vsnip" },
				},
				formattings = {
					fields = { "menu", "abbr", "kind" },
					format = function(entry, item)
						local menu_icon = {
							nvim_lsp = "λ",
							vsnip = "⋗",
							buffer = "Ω",
							path = "🖫"
						}
						item.menu = menu_icon[entry.source_name]
						return item
					end,
				}
			})
		end,
	},

	{
		"hrsh7th/cmp-nvim-lsp",
	},

	{
		"hrsh7th/cmp-nvim-lua",
	},

	{
		"hrsh7th/cmp-nvim-lsp-signature-help",
	},

	{
		"hrsh7th/cmp-vsnip",
	},

	{
		"hrsh7th/cmp-path",
	},

	{
		"hrsh7th/cmp-buffer",
	},

	{
		"hrsh7th/vim-vsnip",
	},
}	
