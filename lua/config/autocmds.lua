-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
-- vim.api.nvim_create_autocmd("BufWritePre", {
--   pattern = "*",
--   callback = function(args)
--     require("conform").format({ bufnr = args.buf })
--   end,
-- })
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "base16-*", -- This will match only when base16-chalk is loaded
  callback = function()
    vim.api.nvim_set_hl(0, "@string.documentation.python", { link = "Comment" })
    vim.api.nvim_set_hl(0, "@variable.python", { link = "TSParameter" })
  end,
})
