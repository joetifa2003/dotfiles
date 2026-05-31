local colors = require("colors")

hl.layer_rule({ match = { namespace = "^(dms)$" }, no_anim = true })
hl.layer_rule({ match = { namespace = "^(dms:bar)$" }, ignore_alpha = 0.1 })
hl.layer_rule({ match = { namespace = "^(dms:bar)$" }, blur = true })
hl.layer_rule({ match = { namespace = "^(dms:desktop-widget:.*)$" }, blur = true })
hl.layer_rule({ match = { namespace = "^(dms:desktop-widget:.*)$" }, ignore_alpha = 0.1 })

hl.config({
	general = {
		gaps_in = 4,
		gaps_out = 8,
		border_size = 2,
		col = {
			active_border = { colors = { colors.secondary, colors.primary }, angle = 45 },
			inactive_border = colors.outline,
		},
		resize_on_border = false,
		allow_tearing = true,
		layout = "dwindle",
	},

	decoration = {
		rounding = 8,
		active_opacity = 1.0,
		inactive_opacity = 0.9,
		shadow = {
			enabled = true,
			range = 8,
			render_power = 3,
			color = "rgba(1a1a1aee)",
		},
		blur = {
			enabled = true,
			size = 5,
			passes = 2,
			vibrancy = 0,
		},
	},

	animations = {
		enabled = true,
	},

	dwindle = {
		preserve_split = true,
	},

	misc = {
		force_default_wallpaper = 0,
		disable_hyprland_logo = true,
		disable_splash_rendering = true,
	},
})

hl.curve("easeOutQuint", { type = "bezier", points = { { 0.23, 1 }, { 0.32, 1 } } })
hl.curve("easeInOutCubic", { type = "bezier", points = { { 0.65, 0.05 }, { 0.36, 1 } } })
hl.curve("linear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })
hl.curve("almostLinear", { type = "bezier", points = { { 0.5, 0.5 }, { 0.75, 1.0 } } })
hl.curve("quick", { type = "bezier", points = { { 0.15, 0 }, { 0.1, 1 } } })

hl.animation({ leaf = "global", enabled = true, speed = 10, bezier = "default" })
hl.animation({ leaf = "border", enabled = true, speed = 5.39, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows", enabled = true, speed = 4.79, bezier = "easeOutQuint" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.1, bezier = "easeOutQuint", style = "popin 87%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1.49, bezier = "linear", style = "popin 87%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade", enabled = true, speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "layers", enabled = true, speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 4, bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.5, bezier = "linear", style = "fade" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 2, bezier = "easeOutQuint", style = "slidefadevert" })
