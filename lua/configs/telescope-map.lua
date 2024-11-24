local map = vim.keymap.set

local function opts(desc)
  return { desc = "telescope " .. desc }
end

map("n", "<leader>fn", "<cmd>Telescope notify<cr>", opts "past notifications")
