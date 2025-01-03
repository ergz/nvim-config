return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      themable = true,
      color_icons = true,
      diagnostics = false,
      -- tab_size = 15,
      style_preset = {
        -- require("bufferline").style_preset.default,
      },
      show_buffer_close_icons = false,
      buffer_close_icon = "󰅖",
      modified_icon = "● ",
      close_icon = " ",
      left_trunc_marker = " ",
      right_trunc_marker = " ",
      show_tab_indicators = true,
      separator_style = "thin",
    },
  },
}
