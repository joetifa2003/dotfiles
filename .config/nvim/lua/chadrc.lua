local M = {}

M.lsp = {
	signature = true,
}

M.nvdash = {
	load_on_startup = true,
}

M.ui = {
	cmp = {
		icons = true,
		lspkind_text = true,
		style = "atom", -- default/flat_light/flat_dark/atom/atom_colored
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

				if vim.bo[vim.api.nvim_get_current_buf()].modified then
					path = path .. " \u{f111} "
				end

				return "%#StText# " .. path
			end,

			grapple = function()
				return " " .. (require("grapple").statusline() or "")
			end,
		},
	},

	tabufline = {
		-- order = { "buffers", "tabs", "btns", "treeOffset" },
		order = { "buffers", "tabs", "btns" },
		enabled = false,
	},
}

M.base46 = {
	theme = "mountain",
	transparency = true,
	extended_integrations = { "dap" },
	changed_themes = {
		["mountain"] = {
			base_16 = {
				base02 = "#343434",
			},
		},
	},
	hl_override = {
		["Search"] = {
			bg = "#e8cca7",
		},
		TelescopeSelection = { bg = "#6f6250" },
	},
}

return M
