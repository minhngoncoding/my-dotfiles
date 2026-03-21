return {
	"echasnovski/mini.surround",
	-- Note: We use 'keys' to lazy-load the plugin only when you actually use it
	keys = {
		{ "sa", desc = "Add surrounding", mode = { "n", "v" } },
		{ "sd", desc = "Delete surrounding" },
		{ "sr", desc = "Replace surrounding" },
		{ "sf", desc = "Find surrounding (right)" },
		{ "sF", desc = "Find surrounding (left)" },
		{ "sh", desc = "Highlight surrounding" },
		{ "sn", desc = "Update n_lines" },
	},
	opts = {
		-- This helps find surroundings even if you aren't "inside" them yet
		search_method = "cover_or_next",
	},
}
