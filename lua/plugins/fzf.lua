local function symbols_filter(entry, ctx)
  if ctx.symbols_filter == nil then
    ctx.symbols_filter = LazyVim.config.get_kind_filter(ctx.bufnr) or false
  end
  if ctx.symbols_filter == false then
    return true
  end
  return vim.tbl_contains(ctx.symbols_filter, entry.kind)
end

return {
  "ibhagwan/fzf-lua",
  opts = {
    winopts = {
      border = "single", -- Set border style to "single"
    },
    fzf_opts = {
      ["--cycle"] = "",
    },
    files = {
      file_icons = true,
    },
    buffers = {
      file_icons = true,
    },
  },
  keys = {
    { "<leader>ss", "<cmd>FzfLua grep_curbuf<cr>", desc = "Buffer" },
    { "<leader>p", "<cmd>FzfLua buffers<cr>", { desc = "Find buffers" } },
    {
      "<C-j>",
      function()
        require("fzf-lua").lsp_document_symbols({
          regex_filter = symbols_filter,
        })
      end,
      desc = "Goto Symbol",
    },
  },
}
