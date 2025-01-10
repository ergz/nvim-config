return {
  "folke/noice.nvim",
  opts = {
    cmdline = {
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
  },
}

-- for just the cmdline at the bottom
-- opts = {
--   cmdline = {
--     view = "cmdline",
--   },
--   popupmenu = {
--     relative = "cursor",
--   },
--   presets = {
--     command_palette = false,
--   },
-- },
