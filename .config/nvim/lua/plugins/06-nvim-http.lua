return {
   'BlackLight/nvim-http',
   on_attach = function()
     vim.keymap.set("n","<leader>rr",":Http<CR>",{desc="Http submit"})
   end
}
