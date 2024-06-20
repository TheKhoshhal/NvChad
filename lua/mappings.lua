require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local bufnr = vim.api.nvim_get_current_buf()

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>cn", function()
  vim.cmd.RustLsp "codeAction"
end, { silent = true, buffer = bufnr })

map("n", "<leader>ca", function ()
  require('telescope').extensions.code_actions.code_actions()
end, {desc = "telescope code action"})

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
