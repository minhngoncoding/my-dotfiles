local M = {
  "CRAG666/code_runner.nvim",
  lazy = true,
  cmd = { "RunCode", "RunFile", "RunProject" },
  config = function()
    require("code_runner").setup({
      filetype = {
        python = "python3 -u",
        cs = "dotnet run",
        lua = "lua",
      },
    })
  end,
}

return M
