return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      themable = true,
      color_icons = true,
      diagnostics = false,
      tab_size = 10,
      style_preset = {
        require("bufferline").style_preset.no_italic,
        require("bufferline").style_preset.minimal,
      },

      show_tab_indicators = true,
      -- indicator = { style = "icon" },
    },
    highlights = {
      buffer_visible = {
        fg = "#565f89", -- Color for unselected tabs
      },
      buffer_selected = {
        fg = "#ffffff", -- Color for selected tab
      },
      warning = {
        fg = "#FFFFFF",
      },
      warning_visible = {
        fg = "#FFFFFF",
      },
      warning_selected = {
        fg = "#FFFFFF",
      },
      warning_diagnostic = {
        fg = "#FFFFFF",
      },
      warning_diagnostic_visible = {
        fg = "#FFFFFF",
      },
      warning_diagnostic_selected = {
        fg = "#FFFFFF",
      },
      error = {
        fg = "#FFFFFF",
      },
      error_visible = {
        fg = "#FFFFFF",
      },
      error_selected = {
        fg = "#FFFFFF",
      },
      error_diagnostic = {
        fg = "#FFFFFF",
      },
      error_diagnostic_visible = {
        fg = "#FFFFFF",
      },
      error_diagnostic_selected = {
        fg = "#FFFFFF",
      },
    },
  },
}
