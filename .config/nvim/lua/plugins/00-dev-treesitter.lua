return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 500
		end,
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
	},
	"folke/neodev.nvim",
	-- treesiter
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			local configs = require("nvim-treesitter.configs")
			configs.setup({
				ensure_installed = {
					"lua",
					"python",
					"php",
					"dart",
					"json",
					"html",
					"javascript",
					"css",
					"bash",
				},
				sync = false,
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
}
