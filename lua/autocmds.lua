local autocmd = vim.api.nvim_create_autocmd

-- spellcheck in markdown
autocmd("FileType", {
  pattern = "markdown",
  command = "setlocal spell wrap",
})

-- disable automatic comment on newline
autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.opt_local.formatoptions:remove { "c", "r", "o" }
  end,
})

-- close nvim-tree if it's the last buffer open
autocmd("BufEnter", {
  pattern = "*",
  callback = function()
    if #vim.api.nvim_list_bufs() == 1 and vim.bo.filetype == "NvimTree" then
      vim.cmd "quit"
    end
  end,
})
