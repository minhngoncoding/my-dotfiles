require("nvchad.autocmds")

local autocmd = vim.api.nvim_create_autocmd

autocmd("VimEnter", {
	command = ":silent !kitty @ set-spacing padding=0 margin=0",
})

autocmd("VimLeavePre", {
	command = ":silent !kitty @ set-spacing padding=20 margin=10",
})

autocmd("BufReadCmd", {
	pattern = "*.ipynb",
	callback = function()
		local file = vim.fn.expand("<afile>")
		local f = io.open(file, "r")
		local content = ""

		if f then
			content = f:read("*all")
			f:close()
		end

		-- 1. Handle NEW or EMPTY files
		if content == "" or content == nil then
			-- Don't call jupytext, just set up a pythonic notebook buffer
			vim.api.nvim_buf_set_lines(0, 0, -1, false, { "# %%", "" })
			vim.bo.filetype = "python"
			-- Tell Iron.nvim to treat this as a notebook
			vim.b.iron_filetype = "python"
			return
		end

		-- 2. Handle EXISTING files via Jupytext
		local cmd = "jupytext --to py:percent --output - " .. vim.fn.shellescape(file)
		local out = vim.fn.systemlist(cmd)

		if vim.v.shell_error ~= 0 then
			print("Jupytext failed. Check if 'jupytext' is installed in your PATH.")
			-- Fallback: open as JSON so you don't lose the file
			vim.cmd("read " .. vim.fn.shellescape(file))
			vim.cmd("0d")
			return
		end

		vim.api.nvim_buf_set_lines(0, 0, -1, false, out)
		vim.bo.filetype = "python"
		vim.b.iron_filetype = "python"
		vim.opt_local.modified = false
	end,
})
