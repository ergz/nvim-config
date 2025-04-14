return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      themable = true,
      color_icons = false,
      diagnostics = false,
      scroll = false,
      -- tab_size = 15,
      style_preset = {
        require("bufferline").style_preset.no_italic,
        require("bufferline").style_preset.no_bold,
        require("bufferline").style_preset.no_italic,
      },
      show_buffer_close_icons = false,
      buffer_close_icon = "󰅖",
      modified_icon = "● ",
      close_icon = " ",
      left_trunc_marker = " ",
      right_trunc_marker = " ",
      show_tab_indicators = true,
      separator_style = "thin",
      right_mouse_command = false,
      always_show_bufferline = true,
      max_prefix_length = 5,
      enforce_regular_tabs = false,

      indicator = {
        style = "none",
      },
    },
    -- highlights = {
    --   buffer_selected = {
    --     fg = "#FFFFFF",
    --     bg = "#2d363b",
    --   },
    -- },
  },
}
