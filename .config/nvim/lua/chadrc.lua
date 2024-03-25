local M = {}

M.ui = {
	theme = "aquarium",
	lsp_semantic_tokens = false,
	transparency = true,

	nvdash = {
		load_on_startup = true,
	},

	statusline = {
		theme = "vscode_colored",
		order = { "mode", "path", "grapple", "%=", "lsp_msg", "%=", "diagnostics", "git", "lsp", "cwd" },
		modules = {
			path = function()
				local path = vim.fn.expand("%:.")
				if path == "" then
					return "%#StText# "
				end

				local icon = require("nvim-web-devicons").get_icon(path)
				if icon then
					path = icon .. " " .. path
				end

				return "%#StText# " .. path
			end,

			grapple = function()
				return " " .. (require("grapple").statusline(
) or "")
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
}

M.base46 = {
	extended_integrations = { "dap" },
}

return M
