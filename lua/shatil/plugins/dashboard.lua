return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
	config = function()
		local dashboard = require("dashboard")

		-- Set up dashboard with customizations
		dashboard.setup({
			theme = "doom",
			config = {
				header = {
					-- Custom ASCII Art Logo
					"                                                  ",
					"                                                  ",
					"                                                  ",
					"                                                  ",
					"                                                  ",
					"                                                  ",
					"███    ██ ███████  ██████  ██    ██ ██ ███    ███ ",
					"████   ██ ██      ██    ██ ██    ██ ██ ████  ████ ",
					"██ ██  ██ █████   ██    ██ ██    ██ ██ ██ ████ ██ ",
					"██  ██ ██ ██      ██    ██  ██  ██  ██ ██  ██  ██ ",
					"██   ████ ███████  ██████    ████   ██ ██      ██ ",
					"                                                  ",
					"                                                  ",
					"                                                  ",
					"                                                  ",
				},
				center = {
					-- Custom Keymap Shortcuts
					{
						icon = "  ",
						desc = "Restore last session",
						action = "SessionRestore",
						key = "r",
					},
					{
						icon = "  ",
						desc = "Quit Neovim",
						action = "qa",
						key = "q",
					},
				},
			},
		})
	end,
}
