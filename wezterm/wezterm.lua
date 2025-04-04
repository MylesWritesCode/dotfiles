local wezterm = require("wezterm")

local config = {
	font_size = 12.0,
	line_height = 1.2,

	cell_width = 1.0,
	hide_tab_bar_if_only_one_tab = true,
	color_scheme = "Catppuccin Mocha",
	window_decorations = "RESIZE",
	window_background_opacity = 0.95,
}

config.font = wezterm.font("Operator Mono", { weight = "DemiLight", stretch = "Normal", style = "Normal" })

config.font_rules = {
	-- bold-but-not-italic
	{
		intensity = "Bold",
		italic = false,
		font = wezterm.font("Operator Mono", { weight = "Bold", stretch = "Normal", style = "Normal" }),
	},

	-- Bold-and-italic
	{
		intensity = "Bold",
		italic = true,
		font = wezterm.font("Operator Mono", { weight = "Bold", stretch = "Normal", style = "Italic" }),
	},

	-- normal-intensity-and-italic
	{
		intensity = "Normal",
		italic = true,
		font = wezterm.font("Operator Mono", { weight = "DemiLight", stretch = "Normal", style = "Italic" }),
	},

	-- half-intensity-and-italic (half-bright or dim); use a lighter weight font
	{
		intensity = "Half",
		italic = true,
		font = wezterm.font("Operator Mono", { weight = "Light", stretch = "Normal", style = "Italic" }),
	},

	-- half-intensity-and-not-italic
	{
		intensity = "Half",
		italic = false,
		font = wezterm.font("Operator Mono", { weight = "Light", stretch = "Normal", style = "Normal" }),
	},
}

return config
