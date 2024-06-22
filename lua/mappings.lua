require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local bufnr = vim.api.nvim_get_current_buf()

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
-- map("n", "<leader>ca", function()
--   vim.cmd.RustLsp "codeAction"
-- end, { silent = true, buffer = bufnr })

map("n", "<leader>ca", function()
  vim.lsp.buf.code_action()
end, { desc = "Code Actions" })

map("n", "<leader>gd", function()
  vim.lsp.buf.definition()
end, { desc = "go to defintion" })

map("n", "<leader>rn", function()
  vim.lsp.buf.rename()
end, { desc = "rename" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
