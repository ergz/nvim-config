return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "ruff_format" },
        javascript = { "prettierd" },
        typescript = { "prettierd" },
      },
      notify_on_error = true,
      log_level = vim.log.levels.ERROR,
    },
  },
}
