-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration
local config = wezterm.config_builder()

-- enable scroll bar to the right
config.enable_scroll_bar = true
-- config.color_scheme = "Wez"
config.color_scheme = "Tokyo Night Light (Gogh)"

local act = wezterm.action

config.keys = {
	{
		key = "g",
		mods = "CTRL",
		action = act.PromptInputLine({
			description = "Enter a new name for tab",
			action = wezterm.action_callback(function(window, line)
				-- line will be `nil` if they hit escape without entering anything
				-- An empty string if they just hit enter
				-- Or the actual line of text they wrote
				if line then
					window:active_tab():set_title(line)
				end
			end),
		}),
	},
}

return config
