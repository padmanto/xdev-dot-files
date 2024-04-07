return {
	{
		"kevinhwang91/nvim-ufo",
		dependencies = { "kevinhwang91/promise-async" },
		--    event = 'VeryLazy',   -- You can make it lazy-loaded via VeryLazy, but comment out if thing doesn't work
		init = function()
			vim.o.foldlevel = 99
			vim.o.foldlevelstart = 99
		end,
		config = function()
			require("ufo").setup({
				-- your config goes here
				-- open_fold_hl_timeout = ...,
				-- provider_selector = function(bufnr, filetype)
				-- 	return { "main", "fallback" }
				-- end,
				preview = {
					mappings = {
						scrollU = "=",
						scrollD = "-",
						jumpTop = "[",
						jumpBot = "]",
					},
				},
			})
			vim.keymap.set("n", "zR", require("ufo").openAllFolds, { desc = "ufo openAllFolds" })
			vim.keymap.set("n", "zM", require("ufo").closeAllFolds, { desc = "ufo closeAllFolds" })
			vim.keymap.set("n", "zr", require("ufo").openFoldsExceptKinds, { desc = "ufo openFoldsExceptKinds" })
			vim.keymap.set("n", "zm", require("ufo").closeFoldsWith, { desc = "ufo closeFoldsWith" }) -- closeAllFolds == closeFoldsWith(0)
			vim.keymap.set("n", "zk", function()
				local winid = require("ufo").peekFoldedLinesUnderCursor()
				if not winid then
					vim.lsp.buf.hover()
				end
			end, { desc = "ufo peek fallback lsp" })
		end,
	},
}
