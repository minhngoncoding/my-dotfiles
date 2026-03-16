require "nvchad.autocmds"

local autocmd = vim.api.nvim_create_autocmd

autocmd("VimEnter", {
  command = ":silent !kitty @ set-spacing padding=0 margin=0",
})

autocmd("VimLeavePre", {
  command = ":silent !kitty @ set-spacing padding=20 margin=10",
})

autocmd("BufWritePre", {
  pattern = "*.norg",
  callback = function(args)
    require("conform").format({ bufnr = args.buf })
  end,
})
