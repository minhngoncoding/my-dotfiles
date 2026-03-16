return {
	{
		"stevearc/conform.nvim",
		-- event = 'BufWritePre', -- uncomment for format on save
		opts = require("configs.conform"),
	},

	-- These are some examples, uncomment them if you want to see them work!
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("configs.lspconfig")
		end,
	},

	{
		"knubie/vim-kitty-navigator",
	},
  { 'nvim-neorg/norg-fmt' },
 {
  'stevearc/conform.nvim',
  event = { "BufWritePre" },
  cmd = { "Format" },
  opts = {
    -- Define the custom formatter for 'norg fmt'
    formatters = {
      norg_fmt = {
        command = "norg",
        args = { "fmt", "-" }, -- The '-' tells it to read from stdin
      },
    },
    -- Assign the custom formatter to the 'norg' filetype
    formatters_by_ft = {
      norg = { "norg_fmt" },
    },
  },
},	{
		"nvim-neorg/neorg",
		lazy = false,
		version = "*",
		config = function()
			require("neorg").setup({
				load = {
					["core.defaults"] = {}, -- Loads default modules
					["core.summary"] = {}, -- Loads default modules
					["core.concealer"] = {
						config = {
        -- This is the most critical setting for rendering tables and code blocks.
        conceal_code_blocks = true,
        icon_preset = "diamond" -- or "box"
      }
					}, -- enables icons/highlighting
					["core.keybinds"] = {},
          				["core.esupports.metagen"] = {},
					["core.dirman"] = { -- Manage workspaces
						config = {
							workspaces = {
								notes = "~/notes",
							},
              default_workspace = "notes",
						},
					},
				},
			})
		end,
	},
}
