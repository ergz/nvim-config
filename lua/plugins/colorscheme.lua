local t_colors = require("tokyonight.colors").setup()
return {
  {
    "folke/tokyonight.nvim",
    opts = {
      styles = {
        -- Style to be applied to different syntax groups
        -- Value is any valid attr-list value for `:help nvim_set_hl`
        comments = { italic = false },
        keywords = { italic = false },
        -- functions = {},
        -- variables = {},
        -- Background styles. Can be "dark", "transparent" or "normal"
        sidebars = "dark", -- style for sidebars, see below
        floats = "dark", -- style for floating windows
      },
      lualine_bold = true,
      -- style = "night",
      on_highlights = function(hl, cl)
        -- hl.WinSeparator = { fg = "#26268f" }

        hl.GitSignsAdd = { fg = "#8BC34A" } -- A softer green
        hl.GitSignsChange = { fg = "#D4CB68" } -- A more muted yellow
        hl.GitSignsDelete = { fg = "#E57373" } -- A softer red
        -- hl.CursorLine = { bg = "#1A1A1A" } -- A slightly lighter black for better visibility
        hl.BufferLineIndicatorSelected = {
          fg = t_colors.orange,
          bg = t_colors.orange,
        }
        hl["@string.documentation.python"] = { link = "Comment" }
      end,
      --- @param colors ColorScheme
      on_colors = function(colors)
        -- local tomorrow_bg = "#1d1f21"
        -- colors.bg = tomorrow_bg
        -- colors.bg_dark = tomorrow_bg
        -- colors.bg_float = tomorrow_bg
        -- colors.bg_sidebar = tomorrow_bg
      end,
    },
  },
  {
    "vague2k/vague.nvim",
    config = function()
      require("vague").setup({
        style = {
          boolean = "none",
          number = "none",
          float = "none",
          error = "none",
          comments = "none",
          conditionals = "none",
          functions = "none",
          headings = "none",
          operators = "none",
          strings = "none",
          variables = "none",
        },
        -- optional configuration here
      })
    end,
  },
  {
    "EdenEast/nightfox.nvim",
    opts = {
      groups = {
        carbonfox = {
          CursorLine = { bg = "#0d0d0d" },
        },
      },
    },
  },
  { "loctvl842/monokai-pro.nvim" },
  {
    "sainnhe/sonokai",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.sonokai_style = "espresso"
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.sonokai_enable_italic = false
    end,
  },
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
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "carbonfox",
    },
  },
}
