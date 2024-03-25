return {
	"nvim-tree/nvim-tree.lua",
	opts = {
		git = {
			enable = true,
		},

		renderer = {
			highlight_git = true,
			icons = {
				show = {
					git = true,
				},
			},
		},

		view = {
			side = "right",
		},

		on_attach = function(bufnr)
			local api = require("nvim-tree.api")

			local function opts(desc)
				return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
			end

			-- default mappings
			api.config.mappings.default_on_attach(bufnr)

			-- custom mappings
			vim.keymap.set("n", "h", api.node.navigate.parent_close, opts("Up"))
			vim.keymap.set("n", "l", api.node.open.edit, opts("Up"))
		end,
	},
}
