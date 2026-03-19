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

-- Mini Surround
map("n", "sa", "<cmd>lua MiniSurround.add('normal')<CR>", { desc = "Surround Add" })
map("n", "sd", "<cmd>lua MiniSurround.delete()<CR>", { desc = "Surround Delete" })
map("n", "sr", "<cmd>lua MiniSurround.replace()<CR>", { desc = "Surround Replace" })
map("x", "sa", "<cmd>lua MiniSurround.add('visual')<CR>", { desc = "Surround Add" })
