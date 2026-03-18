require "nvchad.mappings"

-- add yours here
vim.g.maplocalleader = ","
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>", {desc = "Exit Insert mode"})

-- Code Runner mappings
map("n", "<leader>rr", ":RunCode<CR>", { desc = "Run Code" })
map("n", "<leader>rf", ":RunFile<CR>", { desc = "Run Current File" })
map("n", "<leader>rp", ":RunProject<CR>", { desc = "Run Project" })
map("n", "<leader>rc", ":RunClose<CR>", { desc = "Close Runner" })

--  Toggle Markdown
map("n", "<leader>mt", "<cmd>RenderMarkdown toggle<cr>", { desc = "Markdown Toggle" })
