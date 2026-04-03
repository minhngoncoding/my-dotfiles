return {
	"GCBallesteros/jupytext.vim",
	lazy = false, -- Must load on startup to intercept .ipynb files
	config = function()
		-- This tells jupytext to treat notebooks as python 'percent' files
		-- This makes them look like: # %% (Cell Marker)
		vim.g.jupytext_fmt = "py:percent"

		-- Optional: If you want to use a specific conda/venv jupytext
		-- vim.g.jupytext_command = "path/to/jupytext"
	end,
}
