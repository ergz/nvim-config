return {
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night",
      on_highlights = function(hl, cl)
        -- background is like Tomorrow night -------------------
        -- local background = "#1d1f21"
        -- hl.NeoTreeNormal = { bg = background }
        -- hl.NeoTreeNormalNC = { bg = background }
        -- hl.Normal = { bg = background }
        -- hl.NormalFloat = { bg = background }
        -- hl.NormalNC = { bg = background }

        -- git gutter signs
        hl.GitSignsAdd = { fg = "#A6E22E" }
        hl.GitSignsChange = { fg = "#E6DB74" }
        hl.GitSignsDelete = { fg = "#F92672" }
        -- hl.CursorLine = { bg = "#000000" }
      end,
    },
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
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vague",
    },
  },
}
