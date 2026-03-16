require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "prettier", "eslint" }
vim.lsp.enable(servers)

local python = {"ruff", "pyright"}
vim.lsp.enable(python)

local rust = {"rust-analyzer"}
vim.lsp.enable(rust)
-- read :h vim.lsp.config for changing options of lsp servers 
