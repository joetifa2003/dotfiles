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

local process_icons = {
	["nvim"] = {
		{ Foreground = { Color = "#649c3b" } },
		{ Text = "\u{e6ae}" },
	},
	["zsh"] = {
		{ Text = "\u{ebca}" },
	},
}

local langIcon = {
	[".ts"] = {
		{ Foreground = { Color = "#3178c6" } },
		{ Text = "\u{f06e6}" },
	},
	[".lua"] = {
		{ Foreground = { Color = "#3178c6" } },
		{ Text = "\u{e620}" },
	},
	[".go"] = {
		{ Foreground = { Color = "#6ad7e5" } },
		{ Text = "\u{e627}" },
	},
	[".org"] = {
		{ Foreground = { Color = "#73a594" } },
		{ Text = "\u{e633}" },
	},
}

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
	local pane = tab.active_pane
	local p_name = pane.foreground_process_name

	local lang_icon = ""
	for k, v in pairs(langIcon) do
		if string.find(pane.title, "%" .. k) then
			lang_icon = wezterm.format(v)
			break
		end
	end

	local p_icon = wezterm.format(process_icons["zsh"])
	for k, v in pairs(process_icons) do
		if string.find(p_name, "%" .. k) then
			p_icon = wezterm.format(v)
			break
		end
	end

	return "[" .. tab.tab_index + 1 .. "]" .. p_icon .. " " .. lang_icon .. " " .. pane.title .. " "
end)
