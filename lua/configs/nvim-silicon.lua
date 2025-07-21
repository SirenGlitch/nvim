local opts = {
  disable_defaults = false,

  theme = "Dracula",

  line_offset = function(args)
    return args.line1
  end,

  language = function()
    return vim.bo.filetype
  end,

  to_clipboard = true,

  window_title = function()
    return vim.fn.fnamemodify(vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()), ":t")
  end,

  output = function()
    return os.getenv "HOME" .. "/screenshots/" .. os.date "!%y-%m-%d_%H-%H-%M-%S" .. "_code.png"
  end,
}
return opts
