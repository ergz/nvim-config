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
    -- {
    --   "<C-J>",
    --   function()
    --     require("fzf-lua").lsp_live_workspace_symbols({
    --       regex_filter = symbols_filter,
    --     })
    --   end,
    --   desc = "Goto Symbol (Workspace)",
    -- },
  },
}
