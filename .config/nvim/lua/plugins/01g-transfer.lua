return {
  "coffebar/transfer.nvim",
  lazy = true,
  cmd = { "TransferInit", "DiffRemote", "TransferUpload", "TransferDownload", "TransferDirDiff", "TransferRepeat" },
  opts = {},
  on_attach = function ()
    local map = vim.keymap.set
    map("n","<leader>ti",":TransferInit<CR>",{desc="Transfer Init"})
    map("n","<leader>tu",":TransferUpload<CR>",{desc="Transfer Upload"})
    map("n","<leader>td",":TransferDownload<CR>",{desc="Transfer Download"})
  end,
}
