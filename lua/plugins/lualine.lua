local icons = LazyVim.config.icons

return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        -- theme = "codedark",
        theme = "base16",
        section_separators = "",
        component_separators = "",
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch" },

        lualine_c = {
          LazyVim.lualine.root_dir(),
          {
            "diagnostics",
            symbols = {
              error = icons.diagnostics.Error,
              warn = icons.diagnostics.Warn,
              info = icons.diagnostics.Info,
              hint = icons.diagnostics.Hint,
            },
          },
          { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
          -- NOTE: use this if want pretty relative path
          { LazyVim.lualine.pretty_path() },
          -- { "filename", path = 1 },
        },
        lualine_z = {},
      },
    },
  },
}
