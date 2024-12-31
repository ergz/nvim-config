return {
  {
    "folke/tokyonight.nvim",
    opts = {
      styles = {
        -- Style to be applied to different syntax groups
        -- Value is any valid attr-list value for `:help nvim_set_hl`
        comments = { italic = false },
        keywords = { italic = false },
        functions = {},
        variables = {},
        -- Background styles. Can be "dark", "transparent" or "normal"
        sidebars = "dark", -- style for sidebars, see below
        floats = "dark", -- style for floating windows
      },
      style = "night",
      on_highlights = function(hl, cl)
        -- background is like Tomorrow night -------------------
        -- local background = "#1d1f21"
        local foreground = "#d1daff"
        hl.Normal = { fg = foreground }
        -- hl.NeoTreeNormal = { bg = background }
        -- hl.NeoTreeNormalNC = { bg = background }
        -- hl.Normal = { bg = background }
        -- hl.NormalFloat = { bg = background }
        -- hl.NormalNC = { bg = background }
        hl.WinSeparator = { fg = "#4444ff" }

        -- git gutter signs
        hl.GitSignsAdd = { fg = "#8BC34A" } -- A softer green
        hl.GitSignsChange = { fg = "#D4CB68" } -- A more muted yellow
        hl.GitSignsDelete = { fg = "#E57373" } -- A softer red
        -- hl.CursorLine = { bg = "#1A1A1A" } -- A slightly lighter black for better visibility
      end,
    },
  },

  {
    "maxmx03/solarized.nvim",
    lazy = false,
    priority = 1000,
    ---@type solarized.config
    opts = {},
  },

  -- Lazy
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
  { "RRethy/base16-nvim" },
  { "projekt0n/github-nvim-theme", name = "github-theme" },
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "base16-da-one-gray",
      -- colorscheme = "base16-cirus",
      colorscheme = "tokyonight-night",
    },
  },
}
