require("config.env")
require("config.monitors")
require("config.autostart")
require("config.appearance")
require("config.input")
require("config.keybinds")
require("config.rules")

if hl.plugin.hyprglass then
	local hg = hl.plugin.hyprglass

	hg.config({
		default_theme = "dark",
		default_preset = "blur",
		tint_color = 0x8899aa22,

		brightness = 0.8,
		dark = { brightness = 0.82 },
		light = { adaptive_boost = 0.5 },

		layers = { enabled = 1 },
	})

	hg.layer("quickshell:bezel", { preset = "ui", mask_threshold = 0.3 })
	hg.layer("dms:frame", { preset = "blur-bar", mask_threshold = 0.05 })
	hg.layer("dms:desktop-widget:cavaVisualizer:dw_1773869062763_8aq9tx0qi", { preset = "blur", mask_threshold = 0.05 })
	hg.layer(
		"dms:desktop-widget:dankDesktopWeather:dw_1767021939979_zuighiujh",
		{ preset = "blur", mask_threshold = 0.05 }
	)
	hg.layer("dms:desktop-widget:systemMonitor:dw_1766801420917_olchhodp0", { preset = "blur", mask_threshold = 0.05 })

	-- Presets
	hg.preset("blur", {
		inherits = "glass",
		chromatic_aberration = 0.8,
		refraction_strength = 1.3,
		fresnel_strength = 0.8,
	})

	hg.preset("blur-bar", {
		inherits = "glass",
		chromatic_aberration = 0.4,
		refraction_strength = 1,
		fresnel_strength = 0.2,
	})
end
