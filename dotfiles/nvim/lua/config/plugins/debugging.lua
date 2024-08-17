-- Vimspector window options
vim.cmd([[
	let g:vimspector_sidebar_width = 85
	let g:vimspector_bottombar_height = 15
	let g:vimspector_terminal_maxwidth = 70
]])


return {
	{
		"puremourning/vimspector",
		config = function()
			vim.keymap.set("n", "<leader>ds", function()
				vim.cmd("call vimspector#Launch()")
			end)

			vim.keymap.set("n", "<leader>db", function()
				vim.cmd("call vimspector#ToggleBreakpoint()")
			end)
	
			vim.keymap.set("n", "<leader>dr", function()
				vim.cmd("call vimspector#Reset()")
			end)

			vim.keymap.set("n", "<leader>dn", function()
				vim.cmd("call vimspector#StepOver()")
			end)

			vim.keymap.set("n", "<leader>di", function()
				vim.cmd("call vimspector#StepInto()")
			end)

			vim.keymap.set("n", "<leader>do", function()
				vim.cmd("call vimspector#StepOut()")
			end)
		end
	}
}
