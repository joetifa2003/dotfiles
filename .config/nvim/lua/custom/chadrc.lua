---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "aquarium",
	lsp_semantic_tokens = false,

	nvdash = {
		load_on_startup = true,
	},
	statusline = {
		theme = "vscode_colored",
		overriden_modules = function(modules)
			table.insert(
				modules,
				6,
				(function()
					return "%#StText# " .. vim.api.nvim_buf_get_name(0)
				end)()
			)
		end,
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

	extended_integrations = { "dap" },
	transparency = true,
}

M.plugins = "custom.plugins"
M.mappings = require("custom.mappings")

return M
