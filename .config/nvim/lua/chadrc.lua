local M = {}

M.ui = {
	theme = "aquarium",
	lsp_semantic_tokens = false,

	nvdash = {
		load_on_startup = true,
	},

	statusline = {
		theme = "vscode_colored",
		order = { "mode", "file", "diagnostics", "git", "path", "%=", "lsp_msg", "%=", "lsp", "cursor", "cwd" },
		modules = {
			path = function()
				return "%#StText# " .. vim.api.nvim_buf_get_name(0)
			end,
		},
	},

	tabufline = {
		order = { "buffers", "tabs", "btns", "treeOffset" },
	},

	hl_override = {
		["@parameter"] = {
			fg = "white",
		},
		["@punctuation.bracket"] = {
			fg = "#e8cca7",
		},
		["Repeat"] = {
			fg = "purple",
		},
		["Search"] = {
			bg = "#e8cca7",
		},
	},

	transparency = true,
}

M.base46 = {
	extended_integrations = { "dap" },
}

return M
