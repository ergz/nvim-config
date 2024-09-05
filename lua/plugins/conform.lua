return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "ruff_format" },
      },
      -- format_on_save = {
      --   timeout_ms = 500,
      --   lsp_fallback = true,
      -- },

      notify_on_error = true,
      log_level = vim.log.levels.ERROR,
    },
  },
}
