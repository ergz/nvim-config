return {
  "folke/snacks.nvim",
  opts = {
    words = { enabled = false },
    scroll = { enabled = false },
    dim = { enabled = false },
    notifier = {
      enabled = true,
      style = "compact",
    },
    indent = {
      enabled = true,
      indent = {
        char = "│",
      },
      animate = {
        style = "down",
        easing = "linear",
        duration = {
          total = 150,
        },
      },
    },
    terminal = { enabled = true },
  },
  config = function(_, opts)
    require("snacks").setup(opts)

    vim.api.nvim_set_hl(0, "SnacksNotifierIconError", { fg = "#F70067" })
    vim.api.nvim_set_hl(0, "SnacksNotifierTitleError", { fg = "#F70067" })
    vim.api.nvim_set_hl(0, "SnacksNotifierBorderError", { fg = "#8A1F1F" })
    vim.api.nvim_set_hl(0, "SnacksNotifierFooterError", { fg = "#F70067", italic = true })

    vim.api.nvim_set_hl(0, "SnacksNotifierIconWarn", { fg = "#F79000" })
    vim.api.nvim_set_hl(0, "SnacksNotifierTitleWarn", { fg = "#F79000" })
    vim.api.nvim_set_hl(0, "SnacksNotifierBorderWarn", { fg = "#79491D" })
    vim.api.nvim_set_hl(0, "SnacksNotifierFooterWarn", { fg = "#F79000", italic = true })

    vim.api.nvim_set_hl(0, "SnacksNotifierIconInfo", { fg = "#A9FF68" })
    vim.api.nvim_set_hl(0, "SnacksNotifierTitleInfo", { fg = "#A9FF68" })
    vim.api.nvim_set_hl(0, "SnacksNotifierBorderInfo", { fg = "#4F6752" })
    vim.api.nvim_set_hl(0, "SnacksNotifierFooterInfo", { fg = "#A9FF68", italic = true })

    vim.api.nvim_set_hl(0, "SnacksNotifierIconDebug", { fg = "#8B8B8B" })
    vim.api.nvim_set_hl(0, "SnacksNotifierTitleDebug", { fg = "#8B8B8B" })
    vim.api.nvim_set_hl(0, "SnacksNotifierBorderDebug", { fg = "#8B8B8B" })
    vim.api.nvim_set_hl(0, "SnacksNotifierFooterDebug", { fg = "#8B8B8B", italic = true })

    vim.api.nvim_set_hl(0, "SnacksNotifierIconTrace", { fg = "#D484FF" })
    vim.api.nvim_set_hl(0, "SnacksNotifierTitleTrace", { fg = "#D484FF" })
    vim.api.nvim_set_hl(0, "SnacksNotifierBorderTrace", { fg = "#4F3552" })
    vim.api.nvim_set_hl(0, "SnacksNotifierFooterTrace", { fg = "#D484FF", italic = true })
  end,
}
