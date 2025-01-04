local icons = LazyVim.config.icons

-- Colors for the theme
local colors = {
  bg = "#1f2023",
  line = "#2a2c32",
  fg = "#cdcdcd",
  comment = "#646477",

  keyword = "#2b8fff", -- Electric blue (normal)
  func = "#ff7700", -- Molten orange (insert)
  hint = "#8c54ff", -- Rich purple (visual)
  error = "#ff3333", -- Intense red (replace)
  warning = "#e6be8c",
  visual = "#363738",
}

-- Theme definition with MAXIMUM ENERGY! ⚡
local custom_theme = {
  normal = {
    a = { fg = "#ffffff", bg = colors.keyword, gui = "bold" },
    b = { fg = colors.fg, bg = colors.line },
    c = { fg = colors.comment, bg = colors.bg },
  },
  insert = {
    a = { fg = "#ffffff", bg = colors.func, gui = "bold" },
    b = { fg = colors.fg, bg = colors.line },
    c = { fg = colors.comment, bg = colors.bg },
  },
  visual = {
    a = { fg = "#ffffff", bg = colors.hint, gui = "bold" },
    b = { fg = colors.fg, bg = colors.line },
    c = { fg = colors.comment, bg = colors.bg },
  },
  replace = {
    a = { fg = "#ffffff", bg = colors.error, gui = "bold" },
    b = { fg = colors.fg, bg = colors.line },
    c = { fg = colors.comment, bg = colors.bg },
  },
  inactive = {
    a = { fg = colors.comment, bg = colors.visual, gui = "bold" },
    b = { fg = colors.comment, bg = colors.bg },
    c = { fg = colors.comment, bg = colors.bg },
  },
}

return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        section_separators = "",
        component_separators = "",
        theme = custom_theme,
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
