require("events")
local keys = require("keys")
local appearance = require("appearance")

local wezterm = require("wezterm")
local cfg = wezterm.config_builder()

keys.setup(cfg)
appearance.setup(cfg)

return cfg
