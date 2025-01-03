vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "base16-*", -- This will match only when base16-chalk is loaded
  callback = function()
    vim.api.nvim_set_hl(0, "@string.documentation.python", { link = "Comment" })
    vim.api.nvim_set_hl(0, "@variable.python", { link = "TSParameter" })
  end,
})
