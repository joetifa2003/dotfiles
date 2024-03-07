local colors = require("colors")
local wezterm = require("wezterm")

local M = {}

local function setupTheme(cfg)
	local MOCHA_THEME = "mocha_custom"
	local mocha = wezterm.color.get_builtin_schemes()["catppuccin-mocha"]
	mocha.background = colors.primary
	cfg.color_schemes = {
		[MOCHA_THEME] = mocha,
	}
	cfg.color_scheme = MOCHA_THEME

	cfg.colors = {
		tab_bar = {
			background = colors.primary_dark,
			active_tab = {
				bg_color = colors.primary,
				fg_color = colors.secondary,
				intensity = "Bold",
			},
			inactive_tab = {
				bg_color = colors.primary_darker,
				fg_color = colors.secondary,
			},
		},
	}
end

local function setupFont(cfg)
	cfg.font = wezterm.font({
		family = "Monaspace Neon",
		italic = false,
		harfbuzz_features = {
			"calt",
			"liga",
			"dlig",
			"ss01",
			"ss02",
			"ss03",
			"ss04",
			"ss05",
			"ss06",
			"ss07",
			"ss08",
		},
	})
	cfg.font_size = 14.0
end

function M.setup(cfg)
	cfg.max_fps = 144
	cfg.use_fancy_tab_bar = false
	cfg.initial_rows = 50
	cfg.initial_cols = 160
	cfg.window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	}
	cfg.tab_max_width = 24
	cfg.tab_bar_at_bottom = true

	setupTheme(cfg)
	setupFont(cfg)
end

return M
