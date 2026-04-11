return {
	"Vigemus/iron.nvim",
	config = function()
		local iron = require("iron.core")

		iron.setup({
			config = {
				-- Whether a new repl window is created, or an existing one is used
				scratch_repl = true,
				-- Terminal settings
				repl_definition = {
					python = {
						-- You can use "ipython" or "jupyter-console"
						command = { "uv", "run", "ipython", "--no-confirm-exit" },
						format = require("iron.fts.common").bracketed_paste,
						block_dividers = { "# %%", "---" },
					},
				},
				-- How to open the terminal window
				repl_open_cmd = require("iron.view").split.vertical.botright(0.4),
			},
			-- Keymaps for sending code
			keymaps = {
				toggle_repl = ",rr", -- toggles the repl open and closed.
				restart_repl = ",rR", -- calls `IronRestart` to restart the repl
				send_motion = ",sc",
				visual_send = ",sv",
				send_file = ",sf",
				send_line = ",sl",
				send_paragraph = ",sp",
				send_until_cursor = ",su",
				send_mark = ",sm",
				send_code_block = "<leader><CR>",
				send_code_block_and_move = ",sn",
				mark_motion = ",mc",
				mark_visual = ",mc",
				remove_mark = ",md",
				cr = ",s<cr>",
				interrupt = ",s,",
				exit = ",sq",
				clear = ",cl",
			},
			-- If the help/highlight should be enabled
			highlight = {
				italic = true,
			},
			ignore_blank_lines = true,
		})
	end,
}
