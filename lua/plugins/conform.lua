return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "ruff_format" },
      },
      notify_on_error = true,
      log_level = vim.log.levels.ERROR,
    },
  },
}
