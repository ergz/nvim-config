return {
  "folke/noice.nvim",
  opts = {
    cmdline = {
      enable = true,
      view = "cmdline_popup",
    },
    views = {
      cmdline_popup = {
        border = {
          style = "single", -- Set border style to "single"
          padding = { 0, 0 },
        },
      },
      popupmenu = {
        border = {
          style = "single",
          padding = { 0, 0 },
        },
      },
    },
    lsp = {
      hover = {
        ---@type NoiceViewOptions
        opts = {
          border = "single",
        },
      },
    },
  },
}
