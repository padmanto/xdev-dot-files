return {
	"coffebar/transfer.nvim",
	lazy = false,
	cmd = { "TransferInit", "DiffRemote", "TransferUpload", "TransferDownload", "TransferDirDiff", "TransferRepeat" },
	config = function()
		require("transfer").setup({})
		local map = vim.keymap.set
		map("n", "<leader>ti", ":TransferInit<CR>", { desc = "Transfer Init" })
		map("n", "<leader>tu", ":TransferUpload<CR>", { desc = "Transfer Upload" })
		map("n", "<leader>td", ":TransferDownload<CR>", { desc = "Transfer Download" })
	end,
}
