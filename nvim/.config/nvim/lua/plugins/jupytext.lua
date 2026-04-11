return {
	"GCBallesteros/jupytext.vim",
	enabled = false, -- Tắt nó đi vì chúng ta sẽ dùng Yazi để convert bên ngoài
	config = function()
		vim.g.jupytext_fmt = "py:percent"
	end,
}
