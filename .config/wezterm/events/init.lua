local colors = require("colors")

local wezterm = require("wezterm")
local nf = wezterm.nerdfonts

wezterm.on("update-status", function(window, pane)
	-- "Wed Mar 3 08:14"
	local date = nf.fa_clock_o .. " " .. wezterm.strftime("%a %b %-d %I:%M%P")

	local leader = ""
	if window:leader_is_active() then
		leader = "LEADER"
	end

	window:set_right_status(wezterm.format({
		{ Foreground = { Color = colors.secondary } },
		{
			Text = leader .. " " .. date,
		},
	}))
end)

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
	return "[" .. tab.tab_index + 1 .. "]"
end)
