local wezterm = require("wezterm")
local fonts = require("fonts")
local private = require("private")

local config = {
	font_size = 12.0,
	line_height = 1.2,

	cell_width = 1.0,
	hide_tab_bar_if_only_one_tab = true,
	color_scheme = "Catppuccin Mocha",
	window_decorations = "RESIZE",
	window_background_opacity = 0.95,
}

fonts.apply(config)
private.apply(config)

local bar = wezterm.plugin.require("https://github.com/adriankarlen/bar.wezterm")
bar.apply_to_config(config)

return config
