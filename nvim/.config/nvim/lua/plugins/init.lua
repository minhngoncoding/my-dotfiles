return {
	{
		"stevearc/conform.nvim",
		-- event = 'BufWritePre', -- uncomment for format on save
		opts = require("configs.conform"),
	},

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
    'stevearc/conform.nvim',
    event = { "BufWritePre" },
    cmd = { "Format" },
  },
}
