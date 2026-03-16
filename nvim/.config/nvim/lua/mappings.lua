require "nvchad.mappings"

-- add yours here
vim.g.maplocalleader = ","
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>", {desc = "Exit Insert mode"})

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
