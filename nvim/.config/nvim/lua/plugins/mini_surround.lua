local M = {
  "echasnovski/mini.surround",
  keys = {
    { "sa", mode = { "n", "v" } },
    { "sd", mode = { "n", "v" } },
    { "sr", mode = { "n", "v" } },
  },
  config = function()
    require("mini.surround").setup({
      mappings = {
        add = "sa",            -- Thêm (Surround Add)
        delete = "sd",         -- Xóa (Surround Delete)
        replace = "sr",        -- Thay thế (Surround Replace)
        find = "sf",           -- Tìm dấu bao quanh
        find_left = "sF",      -- Tìm bên trái
        highlight = "sh",      -- Highlight dấu bao quanh
        update_n_lines = "sn", -- Cập nhật phạm vi dòng
      },
    })
  end,
}

return M
