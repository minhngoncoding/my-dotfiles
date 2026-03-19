return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    -- Everything goes inside here
    format_on_save = {
      lsp_fallback = true,
      timeout_ms = 500, -- Increased slightly for stability
    },
    formatters_by_ft = {
      css = { "prettier" },
      html = { "prettier" },
      lua = { "stylua" },
      python = { "ruff_fix", "ruff_format" },
    },
  },
}
