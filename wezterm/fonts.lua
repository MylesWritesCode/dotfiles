local wezterm = require("wezterm")

local module = {}

function module.apply(config)
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
end

return module
