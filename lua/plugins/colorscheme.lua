local t_colors = require("tokyonight.colors").setup()
local everocean_overrides = {
  bg_dim = { "#1E2630", "233" },
  bg0 = { "#262E38", "235" },
  bg1 = { "#2D3641", "236" },
  bg2 = { "#36414B", "237" },
  bg3 = { "#404B56", "238" },
  bg4 = { "#48535F", "239" },
  bg5 = { "#4F5A68", "240" },
  bg_visual = { "#3D4C5C", "60" },
  bg_red = { "#493B45", "52" },
  bg_green = { "#3C4850", "22" },
  bg_blue = { "#33516A", "17" },
  bg_yellow = { "#45443F", "58" },
  fg = { "#C6D4E1", "253" },
  red = { "#E67E80", "203" },
  orange = { "#E69875", "215" },
  yellow = { "#DBBC7F", "179" },
  green = { "#7FB4A9", "108" },
  aqua = { "#7FB4D0", "110" },
  blue = { "#7FBBE3", "111" },
  purple = { "#D699B6", "175" },
  grey0 = { "#7A8490", "244" },
  grey1 = { "#8592A2", "245" },
  grey2 = { "#9DA9BA", "247" },
  statusline1 = { "#80A7C0", "110" },
  statusline2 = { "#C6D4E1", "253" },
  statusline3 = { "#E67E80", "203" },
}
local everforest_harder_overrides = { bg0 = { "#22292d", "235" }, bg_visual = { "#384B5E", "60" } }
local gruvbox_material_harder_overrides = { fg0 = { "#f0d7ac", "235" } }
local carbonfox_pal_overrides = { sel0 = 0 }
return {
  {
    "ergz/hybrid.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      overrides = function(highlights, colors)
        highlights["@string.documentation.python"] = { link = "Comment" }
        -- highlights["@function.builtin.python"] = { link = "Function" }
      end,
    },
  },
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_foreground = "material"
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_float_style = "dim"
      vim.g.gruvbox_material_disable_italic_comment = 1
      vim.g.gruvbox_material_cursor = "orange"
      vim.g.gruvbox_material_visual = "grey background"
      vim.g.gruvbox_material_menu_selection_background = "blue"
      vim.g.gruvbox_material_disable_italic_comment = 1
      vim.g.gruvbox_material_enable_bold = 0
      vim.g.gruvbox_material_colors_override = gruvbox_material_harder_overrides
    end,
  },
  { "savq/melange-nvim", lazy = false, priority = 1000 },
  {
    "sainnhe/everforest",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.everforest_background = "hard"
      vim.g.everforest_float_style = "dim"
      vim.g.everforest_ui_contrast = "high"
      vim.g.everforest_enable_italic = 0
      vim.g.everforest_colors_override = everforest_harder_overrides
    end,
  },
  {
    "sainnhe/sonokai",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.sonokai_style = "maia"
    end,
  },
  {
    "sainnhe/edge",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.edge_style = "neon"
      vim.g.edge_dim_foreground = 0
    end,
  },
  { "EdenEast/nightfox.nvim", lazy = false, priority = 1000 },
  { "pappasam/papercolor-theme-slim", lazy = false, priority = 1000 },
  {

    "LazyVim/LazyVim",
    opts = {
      colorscheme = "hybrid",
    },
  },
}
