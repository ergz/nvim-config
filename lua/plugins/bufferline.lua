return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      themable = true,
      color_icons = true,
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

      -- indicator = {
      --   icon = "", -- this should be omitted if indicator style is not 'icon'
      --   style = "icon",
      -- },
    },
    -- highlights = {
    --   indicator_selected = {
    --     fg = "#88a264",
    --     bg = "#88a264",
    --   },
    -- },
  },
}
