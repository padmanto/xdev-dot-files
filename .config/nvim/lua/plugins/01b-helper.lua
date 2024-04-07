-- vim-maximizer vim-tmux-navigator dressin nvim-surround
return {
	{
		"szw/vim-maximizer",
		keys = {
			{ "<leader>sm", "<cmd>MaximizerToggle<CR>", desc = "Maximize/minimize a split" },
		},
	},
	"christoomey/vim-tmux-navigator",
	{
		"stevearc/dressing.nvim",
		event = "VeryLazy",
	},
	{
		"kylechui/nvim-surround",
		event = { "BufReadPre", "BufNewFile" },
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = true,
	},
}
