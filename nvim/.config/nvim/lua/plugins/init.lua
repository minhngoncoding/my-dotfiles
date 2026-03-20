return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("configs.lspconfig")
		end,
	},

	{
		"knubie/vim-kitty-navigator",
	},

	{
		"hrsh7th/nvim-cmp",
		opts = function()
			local cmp = require("cmp")
			local conf = require("nvchad.configs.cmp") -- Load NvChad's default config first

			-- These are your specific overrides
			conf.mapping = vim.tbl_deep_extend("force", conf.mapping, {
				-- 1. Tab to confirm (grabs the top item even if not highlighted)
				["<Tab>"] = cmp.mapping.confirm({ select = true }),

				-- 2. Enter to ONLY go to a new line (safe mode)
				["<CR>"] = cmp.mapping(function(fallback)
					fallback()
				end),

				-- 3. Use C-n and C-p for navigating if Tab is now for confirming
				["<C-n>"] = cmp.mapping.select_next_item(),
				["<C-p>"] = cmp.mapping.select_prev_item(),
			})

			return conf
		end,
	},
}
