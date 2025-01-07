return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"html",
				"cssls",
				"tailwindcss",
				"lua_ls",
				"graphql",
				"prismals",
				"emmet_ls",
			},
			-- automatically install configured servers
			automatic_installation = true, -- or false if you don't want this
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"eslint_d", -- js linter
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
			},
		})
	end,
}
