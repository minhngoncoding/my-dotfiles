require("nvchad.mappings")

-- add yours here
vim.g.maplocalleader = ","
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>", { desc = "Exit Insert mode" })

-- Code Runner mappings
map("n", "<leader>rr", ":w | RunCode<CR>", { desc = "Run Code" })
map("n", "<leader>rf", ":w | RunFile<CR>", { desc = "Run Current File" })
map("n", "<leader>rp", ":w | RunProject<CR>", { desc = "Run Project" })
map("n", "<leader>rc", ":RunClose<CR>", { desc = "Close Runner" })

--  Toggle Markdown
map("n", "<leader>mt", "<cmd>RenderMarkdown toggle<cr>", { desc = "Markdown Toggle" })

-- Focus the tree specifically without toggling it
map("n", "<leader>ft", ":NvimTreeFocus<CR>", { desc = "Focus NvimTree" })

map("n", ",jp", function()
	local current_win = vim.api.nvim_get_current_win()
	require("iron.core").repl_for("python")

	vim.schedule(function()
		-- Nhảy thẳng về cửa sổ đã lưu bất chấp REPL đang ở đâu
		vim.api.nvim_set_current_win(current_win)
	end)
end, { desc = "Mở REPL và giữ con trỏ tại code" })

-- Chèn Jupyter Cell marker và xuống dòng để viết code luôn
map("n", "<localleader>m", "o# %%<CR><CR><Esc>ki", { desc = "Add New Jupyter Cell" })

-- Nhảy đến cell tiếp theo (Xuống)
vim.keymap.set("n", "nn", function()
	-- Tìm kiếm pattern: Dấu #, theo sau là bất kỳ khoảng trắng nào, rồi đến %%
	-- Chúng ta dùng / để tìm cho chắc chắn
	local pattern = [[^\s*#\s*%%]]
	if vim.fn.search(pattern, "W") == 0 then
		print("Đã hết cell marker phía dưới!")
	else
		vim.cmd("normal! zz")
	end
end, { desc = "Jump to next cell and center" })

-- Nhảy về cell trước đó (Lên)
vim.keymap.set("n", "bb", function()
	local pattern = [[^\s*#\s*%%]]
	if vim.fn.search(pattern, "bW") == 0 then
		print("Đã hết cell marker phía trên!")
	else
		vim.cmd("normal! zz")
	end
end, { desc = "Jump to previous cell" })
