return {
	{
		"mluders/comfy-line-numbers.nvim",
		event = "VeryLazy",
		config = function()
			require("comfy-line-numbers").setup({
				-- You can add options here if you want to override defaults
				-- e.g., relative_number = true,
			})
		end,
	},
}
