return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    ---@type table<string, snacks.win.Config>
    styles = {
      input = {
        border = "single",
      },
      notification = {
        border = "single",
      },
      notification_history = { border = "single" },
    },
    lazygit = {
      win = {
        border = "double",
      },
    },
    ---@class snacks.input.Config
    input = {
      enabled = true,
    },
    ---@class snacks.words.Config
    words = { enabled = false },
    ---@class sncaks.scroll.Config
    scroll = { enabled = false },
    ---@class snacks.dim.Config
    dim = { enabled = false },
    ---@class snacks.notifier.Config
    notifier = {
      enabled = true,
      padding = false,
      style = "compact",
    },
    ---@class snacks.indent.Config
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

    --- make notifications look like the nvim-notify ones
    vim.api.nvim_set_hl(0, "SnacksNotifierIconError", { fg = "#F70067" })
    vim.api.nvim_set_hl(0, "SnacksNotifierTitleError", { fg = "#F70067" })
    vim.api.nvim_set_hl(0, "SnacksNotifierBorderError", { fg = "#8A1F1F", bold = true })
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
    -- vim.api.nvim_set_hl(0, "SnacksIndentScope", { fg = "#2b8fff" })
  end,
}
